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

-- DATE "06/16/2025 21:00:02"

-- 
-- Device: Altera EP4CGX22CF19C6 Package FBGA324
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	test IS
    PORT (
	pwm0 : OUT std_logic;
	clk : IN std_logic;
	rst : IN std_logic;
	pwm1 : OUT std_logic;
	pwm2 : OUT std_logic;
	pwm3 : OUT std_logic;
	sine : OUT std_logic_vector(7 DOWNTO 0);
	triang0 : OUT std_logic_vector(7 DOWNTO 0);
	triang1 : OUT std_logic_vector(7 DOWNTO 0);
	triang2 : OUT std_logic_vector(7 DOWNTO 0);
	triang3 : OUT std_logic_vector(7 DOWNTO 0)
	);
END test;

-- Design Ports Information
-- pwm0	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm1	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm2	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm3	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sine[7]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sine[6]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sine[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sine[4]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sine[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sine[2]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sine[1]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sine[0]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- triang0[7]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- triang0[6]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- triang0[5]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- triang0[4]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- triang0[3]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- triang0[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- triang0[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- triang0[0]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- triang1[7]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- triang1[6]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- triang1[5]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- triang1[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- triang1[3]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- triang1[2]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- triang1[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- triang1[0]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- triang2[7]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- triang2[6]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- triang2[5]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- triang2[4]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- triang2[3]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- triang2[2]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- triang2[1]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- triang2[0]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- triang3[7]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- triang3[6]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- triang3[5]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- triang3[4]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- triang3[3]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- triang3[2]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- triang3[1]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- triang3[0]	=>  Location: PIN_M17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF test IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_pwm0 : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_pwm1 : std_logic;
SIGNAL ww_pwm2 : std_logic;
SIGNAL ww_pwm3 : std_logic;
SIGNAL ww_sine : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_triang0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_triang1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_triang2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_triang3 : std_logic_vector(7 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|s_clk_out_internal~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|s_clk_out_internal~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst1|Add0~1\ : std_logic;
SIGNAL \inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst1|Add0~3\ : std_logic;
SIGNAL \inst1|Add0~4_combout\ : std_logic;
SIGNAL \inst1|Add0~5\ : std_logic;
SIGNAL \inst1|Add0~6_combout\ : std_logic;
SIGNAL \inst1|Add0~7\ : std_logic;
SIGNAL \inst1|Add0~8_combout\ : std_logic;
SIGNAL \inst1|Add0~9\ : std_logic;
SIGNAL \inst1|Add0~10_combout\ : std_logic;
SIGNAL \inst1|Add0~11\ : std_logic;
SIGNAL \inst1|Add0~12_combout\ : std_logic;
SIGNAL \inst1|Add0~13\ : std_logic;
SIGNAL \inst1|Add0~14_combout\ : std_logic;
SIGNAL \inst1|Add0~15\ : std_logic;
SIGNAL \inst1|Add0~16_combout\ : std_logic;
SIGNAL \inst2|Mux4~8_combout\ : std_logic;
SIGNAL \inst2|Mux4~20_combout\ : std_logic;
SIGNAL \inst2|Mux4~41_combout\ : std_logic;
SIGNAL \inst2|Mux4~53_combout\ : std_logic;
SIGNAL \inst2|Mux5~24_combout\ : std_logic;
SIGNAL \inst2|Mux5~25_combout\ : std_logic;
SIGNAL \inst2|Mux5~26_combout\ : std_logic;
SIGNAL \inst2|Mux5~75_combout\ : std_logic;
SIGNAL \inst2|Mux6~12_combout\ : std_logic;
SIGNAL \inst2|Mux6~13_combout\ : std_logic;
SIGNAL \inst2|Mux6~14_combout\ : std_logic;
SIGNAL \inst2|Mux6~15_combout\ : std_logic;
SIGNAL \inst2|Mux6~16_combout\ : std_logic;
SIGNAL \inst2|Mux6~17_combout\ : std_logic;
SIGNAL \inst2|Mux6~18_combout\ : std_logic;
SIGNAL \inst2|Mux6~19_combout\ : std_logic;
SIGNAL \inst2|Mux6~20_combout\ : std_logic;
SIGNAL \inst2|Mux6~21_combout\ : std_logic;
SIGNAL \inst2|Mux6~22_combout\ : std_logic;
SIGNAL \inst2|Mux6~23_combout\ : std_logic;
SIGNAL \inst2|Mux6~24_combout\ : std_logic;
SIGNAL \inst2|Mux6~25_combout\ : std_logic;
SIGNAL \inst2|Mux6~26_combout\ : std_logic;
SIGNAL \inst2|Mux6~27_combout\ : std_logic;
SIGNAL \inst2|Mux6~28_combout\ : std_logic;
SIGNAL \inst2|Mux6~29_combout\ : std_logic;
SIGNAL \inst2|Mux6~30_combout\ : std_logic;
SIGNAL \inst2|Mux6~31_combout\ : std_logic;
SIGNAL \inst2|Mux6~32_combout\ : std_logic;
SIGNAL \inst2|Mux6~33_combout\ : std_logic;
SIGNAL \inst2|Mux6~34_combout\ : std_logic;
SIGNAL \inst2|Mux6~35_combout\ : std_logic;
SIGNAL \inst2|Mux6~36_combout\ : std_logic;
SIGNAL \inst2|Mux6~37_combout\ : std_logic;
SIGNAL \inst2|Mux6~38_combout\ : std_logic;
SIGNAL \inst2|Mux6~39_combout\ : std_logic;
SIGNAL \inst2|Mux6~40_combout\ : std_logic;
SIGNAL \inst2|Mux6~41_combout\ : std_logic;
SIGNAL \inst2|Mux6~42_combout\ : std_logic;
SIGNAL \inst2|Mux6~51_combout\ : std_logic;
SIGNAL \inst2|Mux6~65_combout\ : std_logic;
SIGNAL \inst2|Mux6~66_combout\ : std_logic;
SIGNAL \inst2|Mux6~67_combout\ : std_logic;
SIGNAL \inst2|Mux6~68_combout\ : std_logic;
SIGNAL \inst2|Mux6~71_combout\ : std_logic;
SIGNAL \inst2|Mux6~72_combout\ : std_logic;
SIGNAL \inst2|Mux6~73_combout\ : std_logic;
SIGNAL \inst2|Mux6~74_combout\ : std_logic;
SIGNAL \inst2|Mux6~78_combout\ : std_logic;
SIGNAL \inst2|Mux6~81_combout\ : std_logic;
SIGNAL \inst2|Mux6~85_combout\ : std_logic;
SIGNAL \inst2|Mux6~86_combout\ : std_logic;
SIGNAL \inst2|Mux6~87_combout\ : std_logic;
SIGNAL \inst2|Mux6~92_combout\ : std_logic;
SIGNAL \inst2|Mux6~93_combout\ : std_logic;
SIGNAL \inst2|Mux6~94_combout\ : std_logic;
SIGNAL \inst2|Mux6~100_combout\ : std_logic;
SIGNAL \inst2|Mux6~108_combout\ : std_logic;
SIGNAL \inst2|Mux6~111_combout\ : std_logic;
SIGNAL \inst2|Mux6~132_combout\ : std_logic;
SIGNAL \inst2|Mux6~133_combout\ : std_logic;
SIGNAL \inst2|Mux6~134_combout\ : std_logic;
SIGNAL \inst2|Mux6~135_combout\ : std_logic;
SIGNAL \inst2|Mux7~1_combout\ : std_logic;
SIGNAL \inst2|Mux7~2_combout\ : std_logic;
SIGNAL \inst2|Mux7~33_combout\ : std_logic;
SIGNAL \inst2|Mux7~34_combout\ : std_logic;
SIGNAL \inst2|Mux7~36_combout\ : std_logic;
SIGNAL \inst2|Mux7~37_combout\ : std_logic;
SIGNAL \inst2|Mux7~38_combout\ : std_logic;
SIGNAL \inst2|Mux7~39_combout\ : std_logic;
SIGNAL \inst2|Mux7~40_combout\ : std_logic;
SIGNAL \inst2|Mux7~55_combout\ : std_logic;
SIGNAL \inst2|Mux7~56_combout\ : std_logic;
SIGNAL \inst2|Mux7~57_combout\ : std_logic;
SIGNAL \inst2|Mux7~58_combout\ : std_logic;
SIGNAL \inst2|Mux7~59_combout\ : std_logic;
SIGNAL \inst2|Mux7~76_combout\ : std_logic;
SIGNAL \inst2|Mux7~79_combout\ : std_logic;
SIGNAL \inst2|Mux7~93_combout\ : std_logic;
SIGNAL \inst2|Mux7~101_combout\ : std_logic;
SIGNAL \inst2|Mux7~102_combout\ : std_logic;
SIGNAL \inst2|Mux7~104_combout\ : std_logic;
SIGNAL \inst2|Mux7~105_combout\ : std_logic;
SIGNAL \inst2|Mux7~110_combout\ : std_logic;
SIGNAL \inst2|Mux7~131_combout\ : std_logic;
SIGNAL \inst2|Mux7~132_combout\ : std_logic;
SIGNAL \inst2|Mux7~133_combout\ : std_logic;
SIGNAL \inst2|Mux7~134_combout\ : std_logic;
SIGNAL \inst2|Mux7~135_combout\ : std_logic;
SIGNAL \inst2|Mux7~136_combout\ : std_logic;
SIGNAL \inst2|Mux7~137_combout\ : std_logic;
SIGNAL \inst2|Mux7~138_combout\ : std_logic;
SIGNAL \inst2|Mux7~139_combout\ : std_logic;
SIGNAL \inst2|Mux7~142_combout\ : std_logic;
SIGNAL \inst2|Mux7~143_combout\ : std_logic;
SIGNAL \inst2|Mux7~144_combout\ : std_logic;
SIGNAL \inst2|Mux7~145_combout\ : std_logic;
SIGNAL \inst2|Mux7~149_combout\ : std_logic;
SIGNAL \inst2|Mux7~172_combout\ : std_logic;
SIGNAL \inst2|Mux7~173_combout\ : std_logic;
SIGNAL \inst2|Mux7~174_combout\ : std_logic;
SIGNAL \inst2|Mux7~175_combout\ : std_logic;
SIGNAL \inst2|Mux7~176_combout\ : std_logic;
SIGNAL \inst2|Mux7~177_combout\ : std_logic;
SIGNAL \inst2|Mux7~178_combout\ : std_logic;
SIGNAL \inst2|Mux7~179_combout\ : std_logic;
SIGNAL \inst2|Mux7~180_combout\ : std_logic;
SIGNAL \inst1|s_clk_out_internal~q\ : std_logic;
SIGNAL \inst3|s_clk_out_internal~q\ : std_logic;
SIGNAL \inst1|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|Equal0~1_combout\ : std_logic;
SIGNAL \inst1|Equal0~2_combout\ : std_logic;
SIGNAL \inst1|s_counter~0_combout\ : std_logic;
SIGNAL \inst1|s_counter~1_combout\ : std_logic;
SIGNAL \inst2|Mux4~62_combout\ : std_logic;
SIGNAL \inst2|Mux6~160_combout\ : std_logic;
SIGNAL \inst2|Mux7~189_combout\ : std_logic;
SIGNAL \inst2|Mux7~190_combout\ : std_logic;
SIGNAL \inst2|Mux7~197_combout\ : std_logic;
SIGNAL \inst2|Mux7~198_combout\ : std_logic;
SIGNAL \inst2|Mux7~201_combout\ : std_logic;
SIGNAL \inst2|Mux7~202_combout\ : std_logic;
SIGNAL \inst2|Mux6~166_combout\ : std_logic;
SIGNAL \inst2|Mux6~167_combout\ : std_logic;
SIGNAL \inst2|Mux6~170_combout\ : std_logic;
SIGNAL \inst2|Mux6~171_combout\ : std_logic;
SIGNAL \inst2|Mux6~172_combout\ : std_logic;
SIGNAL \inst2|Mux6~173_combout\ : std_logic;
SIGNAL \inst2|Mux6~174_combout\ : std_logic;
SIGNAL \inst2|Mux6~175_combout\ : std_logic;
SIGNAL \inst1|s_clk_out_internal~0_combout\ : std_logic;
SIGNAL \inst3|s_clk_out_internal~0_combout\ : std_logic;
SIGNAL \inst1|s_clk_out_internal~clkctrl_outclk\ : std_logic;
SIGNAL \inst3|s_clk_out_internal~clkctrl_outclk\ : std_logic;
SIGNAL \pwm0~output_o\ : std_logic;
SIGNAL \pwm1~output_o\ : std_logic;
SIGNAL \pwm2~output_o\ : std_logic;
SIGNAL \pwm3~output_o\ : std_logic;
SIGNAL \sine[7]~output_o\ : std_logic;
SIGNAL \sine[6]~output_o\ : std_logic;
SIGNAL \sine[5]~output_o\ : std_logic;
SIGNAL \sine[4]~output_o\ : std_logic;
SIGNAL \sine[3]~output_o\ : std_logic;
SIGNAL \sine[2]~output_o\ : std_logic;
SIGNAL \sine[1]~output_o\ : std_logic;
SIGNAL \sine[0]~output_o\ : std_logic;
SIGNAL \triang0[7]~output_o\ : std_logic;
SIGNAL \triang0[6]~output_o\ : std_logic;
SIGNAL \triang0[5]~output_o\ : std_logic;
SIGNAL \triang0[4]~output_o\ : std_logic;
SIGNAL \triang0[3]~output_o\ : std_logic;
SIGNAL \triang0[2]~output_o\ : std_logic;
SIGNAL \triang0[1]~output_o\ : std_logic;
SIGNAL \triang0[0]~output_o\ : std_logic;
SIGNAL \triang1[7]~output_o\ : std_logic;
SIGNAL \triang1[6]~output_o\ : std_logic;
SIGNAL \triang1[5]~output_o\ : std_logic;
SIGNAL \triang1[4]~output_o\ : std_logic;
SIGNAL \triang1[3]~output_o\ : std_logic;
SIGNAL \triang1[2]~output_o\ : std_logic;
SIGNAL \triang1[1]~output_o\ : std_logic;
SIGNAL \triang1[0]~output_o\ : std_logic;
SIGNAL \triang2[7]~output_o\ : std_logic;
SIGNAL \triang2[6]~output_o\ : std_logic;
SIGNAL \triang2[5]~output_o\ : std_logic;
SIGNAL \triang2[4]~output_o\ : std_logic;
SIGNAL \triang2[3]~output_o\ : std_logic;
SIGNAL \triang2[2]~output_o\ : std_logic;
SIGNAL \triang2[1]~output_o\ : std_logic;
SIGNAL \triang2[0]~output_o\ : std_logic;
SIGNAL \triang3[7]~output_o\ : std_logic;
SIGNAL \triang3[6]~output_o\ : std_logic;
SIGNAL \triang3[5]~output_o\ : std_logic;
SIGNAL \triang3[4]~output_o\ : std_logic;
SIGNAL \triang3[3]~output_o\ : std_logic;
SIGNAL \triang3[2]~output_o\ : std_logic;
SIGNAL \triang3[1]~output_o\ : std_logic;
SIGNAL \triang3[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst2|Add0~1\ : std_logic;
SIGNAL \inst2|Add0~3\ : std_logic;
SIGNAL \inst2|Add0~4_combout\ : std_logic;
SIGNAL \inst2|Add0~5\ : std_logic;
SIGNAL \inst2|Add0~7\ : std_logic;
SIGNAL \inst2|Add0~9\ : std_logic;
SIGNAL \inst2|Add0~10_combout\ : std_logic;
SIGNAL \inst2|Add0~11\ : std_logic;
SIGNAL \inst2|Add0~12_combout\ : std_logic;
SIGNAL \inst2|Add0~13\ : std_logic;
SIGNAL \inst2|Add0~14_combout\ : std_logic;
SIGNAL \inst2|Add0~15\ : std_logic;
SIGNAL \inst2|Add0~16_combout\ : std_logic;
SIGNAL \inst2|Mux7~0_combout\ : std_logic;
SIGNAL \inst2|Mux1~12_combout\ : std_logic;
SIGNAL \inst2|Add0~17\ : std_logic;
SIGNAL \inst2|Add0~19\ : std_logic;
SIGNAL \inst2|Add0~20_combout\ : std_logic;
SIGNAL \inst2|Add0~6_combout\ : std_logic;
SIGNAL \inst2|Add0~8_combout\ : std_logic;
SIGNAL \inst2|Equal0~4_combout\ : std_logic;
SIGNAL \inst2|Add0~21\ : std_logic;
SIGNAL \inst2|Add0~22_combout\ : std_logic;
SIGNAL \inst2|Add0~18_combout\ : std_logic;
SIGNAL \inst2|Equal0~2_combout\ : std_logic;
SIGNAL \inst2|auxA~1_combout\ : std_logic;
SIGNAL \inst2|Equal0~5_combout\ : std_logic;
SIGNAL \inst2|auxA~0_combout\ : std_logic;
SIGNAL \inst2|Mux0~0_combout\ : std_logic;
SIGNAL \inst4|s_triangular_counter[0]~9\ : std_logic;
SIGNAL \inst4|s_triangular_counter[1]~10_combout\ : std_logic;
SIGNAL \inst4|Equal1~1_combout\ : std_logic;
SIGNAL \inst4|s_triangular_counter[0]~8_combout\ : std_logic;
SIGNAL \inst4|Equal1~0_combout\ : std_logic;
SIGNAL \inst4|Equal1~2_combout\ : std_logic;
SIGNAL \inst4|s_triangular_counter[7]~25_combout\ : std_logic;
SIGNAL \inst4|direction~0_combout\ : std_logic;
SIGNAL \inst4|direction~q\ : std_logic;
SIGNAL \inst4|s_triangular_counter[7]~24_combout\ : std_logic;
SIGNAL \inst4|s_triangular_counter[7]~26_combout\ : std_logic;
SIGNAL \inst4|s_triangular_counter[7]~27_combout\ : std_logic;
SIGNAL \inst4|s_triangular_counter[1]~11\ : std_logic;
SIGNAL \inst4|s_triangular_counter[2]~12_combout\ : std_logic;
SIGNAL \inst4|s_triangular_counter[2]~13\ : std_logic;
SIGNAL \inst4|s_triangular_counter[3]~14_combout\ : std_logic;
SIGNAL \inst4|s_triangular_counter[3]~15\ : std_logic;
SIGNAL \inst4|s_triangular_counter[4]~16_combout\ : std_logic;
SIGNAL \inst4|s_triangular_counter[4]~17\ : std_logic;
SIGNAL \inst4|s_triangular_counter[5]~18_combout\ : std_logic;
SIGNAL \inst4|s_triangular_counter[5]~19\ : std_logic;
SIGNAL \inst4|s_triangular_counter[6]~20_combout\ : std_logic;
SIGNAL \inst4|s_triangular_counter[6]~21\ : std_logic;
SIGNAL \inst4|s_triangular_counter[7]~22_combout\ : std_logic;
SIGNAL \inst2|Mux1~6_combout\ : std_logic;
SIGNAL \inst2|Mux1~7_combout\ : std_logic;
SIGNAL \inst2|Add0~2_combout\ : std_logic;
SIGNAL \inst2|Mux1~4_combout\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|Mux1~5_combout\ : std_logic;
SIGNAL \inst2|Mux1~8_combout\ : std_logic;
SIGNAL \inst2|Mux1~10_combout\ : std_logic;
SIGNAL \inst2|Mux1~9_combout\ : std_logic;
SIGNAL \inst2|Mux1~11_combout\ : std_logic;
SIGNAL \inst2|Mux2~9_combout\ : std_logic;
SIGNAL \inst2|Mux2~10_combout\ : std_logic;
SIGNAL \inst2|Mux2~17_combout\ : std_logic;
SIGNAL \inst2|Mux3~28_combout\ : std_logic;
SIGNAL \inst2|Mux3~38_combout\ : std_logic;
SIGNAL \inst2|Mux3~39_combout\ : std_logic;
SIGNAL \inst2|Mux3~30_combout\ : std_logic;
SIGNAL \inst2|Mux3~29_combout\ : std_logic;
SIGNAL \inst2|Mux3~31_combout\ : std_logic;
SIGNAL \inst2|Mux3~32_combout\ : std_logic;
SIGNAL \inst2|Mux3~33_combout\ : std_logic;
SIGNAL \inst2|Mux3~34_combout\ : std_logic;
SIGNAL \inst2|Mux3~37_combout\ : std_logic;
SIGNAL \inst2|Mux3~21_combout\ : std_logic;
SIGNAL \inst2|Mux3~22_combout\ : std_logic;
SIGNAL \inst2|Mux3~23_combout\ : std_logic;
SIGNAL \inst2|Mux2~2_combout\ : std_logic;
SIGNAL \inst2|Mux2~3_combout\ : std_logic;
SIGNAL \inst2|Mux3~24_combout\ : std_logic;
SIGNAL \inst2|Mux3~25_combout\ : std_logic;
SIGNAL \inst2|Mux3~26_combout\ : std_logic;
SIGNAL \inst2|Mux3~18_combout\ : std_logic;
SIGNAL \inst2|Mux3~19_combout\ : std_logic;
SIGNAL \inst2|Mux3~6_combout\ : std_logic;
SIGNAL \inst2|Mux3~7_combout\ : std_logic;
SIGNAL \inst2|Mux3~36_combout\ : std_logic;
SIGNAL \inst2|Mux3~9_combout\ : std_logic;
SIGNAL \inst2|Mux3~11_combout\ : std_logic;
SIGNAL \inst2|Mux3~10_combout\ : std_logic;
SIGNAL \inst2|Mux3~12_combout\ : std_logic;
SIGNAL \inst2|Mux3~13_combout\ : std_logic;
SIGNAL \inst2|Mux3~15_combout\ : std_logic;
SIGNAL \inst2|Mux5~4_combout\ : std_logic;
SIGNAL \inst2|Mux5~5_combout\ : std_logic;
SIGNAL \inst2|Mux3~14_combout\ : std_logic;
SIGNAL \inst2|Mux3~16_combout\ : std_logic;
SIGNAL \inst2|Mux3~17_combout\ : std_logic;
SIGNAL \inst2|Mux3~20_combout\ : std_logic;
SIGNAL \inst2|Mux3~27_combout\ : std_logic;
SIGNAL \inst2|Mux3~35_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_cout\ : std_logic;
SIGNAL \inst|LessThan0~3_cout\ : std_logic;
SIGNAL \inst|LessThan0~5_cout\ : std_logic;
SIGNAL \inst|LessThan0~7_cout\ : std_logic;
SIGNAL \inst|LessThan0~9_cout\ : std_logic;
SIGNAL \inst|LessThan0~11_cout\ : std_logic;
SIGNAL \inst|LessThan0~13_cout\ : std_logic;
SIGNAL \inst|LessThan0~14_combout\ : std_logic;
SIGNAL \inst|pwm_output0~q\ : std_logic;
SIGNAL \inst4|Add2~0_combout\ : std_logic;
SIGNAL \inst2|Mux4~25_combout\ : std_logic;
SIGNAL \inst2|Mux4~54_combout\ : std_logic;
SIGNAL \inst2|Mux4~55_combout\ : std_logic;
SIGNAL \inst2|Mux4~56_combout\ : std_logic;
SIGNAL \inst2|Mux4~57_combout\ : std_logic;
SIGNAL \inst2|Mux4~32_combout\ : std_logic;
SIGNAL \inst2|Mux4~14_combout\ : std_logic;
SIGNAL \inst2|Mux4~64_combout\ : std_logic;
SIGNAL \inst2|Mux3~8_combout\ : std_logic;
SIGNAL \inst2|Mux4~49_combout\ : std_logic;
SIGNAL \inst2|Mux4~50_combout\ : std_logic;
SIGNAL \inst2|Mux4~48_combout\ : std_logic;
SIGNAL \inst2|Mux4~51_combout\ : std_logic;
SIGNAL \inst2|Mux4~65_combout\ : std_logic;
SIGNAL \inst2|Mux4~10_combout\ : std_logic;
SIGNAL \inst2|Mux4~42_combout\ : std_logic;
SIGNAL \inst2|Mux4~43_combout\ : std_logic;
SIGNAL \inst2|Mux4~45_combout\ : std_logic;
SIGNAL \inst2|Mux4~44_combout\ : std_logic;
SIGNAL \inst2|Mux4~46_combout\ : std_logic;
SIGNAL \inst2|Mux4~47_combout\ : std_logic;
SIGNAL \inst2|Mux4~52_combout\ : std_logic;
SIGNAL \inst2|Mux4~66_combout\ : std_logic;
SIGNAL \inst2|Mux4~67_combout\ : std_logic;
SIGNAL \inst2|Mux4~38_combout\ : std_logic;
SIGNAL \inst2|Mux4~39_combout\ : std_logic;
SIGNAL \inst2|Mux4~40_combout\ : std_logic;
SIGNAL \inst2|Mux4~58_combout\ : std_logic;
SIGNAL \inst2|Mux4~18_combout\ : std_logic;
SIGNAL \inst2|Mux4~24_combout\ : std_logic;
SIGNAL \inst2|Mux4~26_combout\ : std_logic;
SIGNAL \inst2|Mux4~27_combout\ : std_logic;
SIGNAL \inst2|Mux4~28_combout\ : std_logic;
SIGNAL \inst2|Mux4~29_combout\ : std_logic;
SIGNAL \inst2|Mux4~31_combout\ : std_logic;
SIGNAL \inst2|Mux4~33_combout\ : std_logic;
SIGNAL \inst2|Mux4~30_combout\ : std_logic;
SIGNAL \inst2|Mux4~34_combout\ : std_logic;
SIGNAL \inst2|Mux4~35_combout\ : std_logic;
SIGNAL \inst2|Mux4~36_combout\ : std_logic;
SIGNAL \inst2|Mux6~10_combout\ : std_logic;
SIGNAL \inst2|Mux2~5_combout\ : std_logic;
SIGNAL \inst2|Mux4~21_combout\ : std_logic;
SIGNAL \inst2|Mux4~63_combout\ : std_logic;
SIGNAL \inst2|Mux4~22_combout\ : std_logic;
SIGNAL \inst2|Mux4~17_combout\ : std_logic;
SIGNAL \inst2|Mux4~61_combout\ : std_logic;
SIGNAL \inst2|Mux4~19_combout\ : std_logic;
SIGNAL \inst2|Mux4~9_combout\ : std_logic;
SIGNAL \inst2|Mux4~12_combout\ : std_logic;
SIGNAL \inst2|Mux4~60_combout\ : std_logic;
SIGNAL \inst2|Mux4~11_combout\ : std_logic;
SIGNAL \inst2|Mux4~13_combout\ : std_logic;
SIGNAL \inst2|Mux4~15_combout\ : std_logic;
SIGNAL \inst2|Mux4~16_combout\ : std_logic;
SIGNAL \inst2|Mux4~23_combout\ : std_logic;
SIGNAL \inst2|Mux4~37_combout\ : std_logic;
SIGNAL \inst2|Mux4~59_combout\ : std_logic;
SIGNAL \inst2|Mux5~90_combout\ : std_logic;
SIGNAL \inst2|Mux5~73_combout\ : std_logic;
SIGNAL \inst2|Mux5~69_combout\ : std_logic;
SIGNAL \inst2|Mux5~70_combout\ : std_logic;
SIGNAL \inst2|Mux5~71_combout\ : std_logic;
SIGNAL \inst2|Mux5~72_combout\ : std_logic;
SIGNAL \inst2|Mux5~74_combout\ : std_logic;
SIGNAL \inst2|Mux5~84_combout\ : std_logic;
SIGNAL \inst2|Mux5~85_combout\ : std_logic;
SIGNAL \inst2|Mux5~78_combout\ : std_logic;
SIGNAL \inst2|Mux5~79_combout\ : std_logic;
SIGNAL \inst2|Mux5~81_combout\ : std_logic;
SIGNAL \inst2|Mux5~80_combout\ : std_logic;
SIGNAL \inst2|Mux5~82_combout\ : std_logic;
SIGNAL \inst2|Mux5~83_combout\ : std_logic;
SIGNAL \inst2|Mux5~76_combout\ : std_logic;
SIGNAL \inst2|Mux5~77_combout\ : std_logic;
SIGNAL \inst2|Mux5~86_combout\ : std_logic;
SIGNAL \inst2|Mux5~87_combout\ : std_logic;
SIGNAL \inst2|Mux5~40_combout\ : std_logic;
SIGNAL \inst2|Mux5~41_combout\ : std_logic;
SIGNAL \inst2|Mux5~35_combout\ : std_logic;
SIGNAL \inst2|Mux5~36_combout\ : std_logic;
SIGNAL \inst2|Mux5~16_combout\ : std_logic;
SIGNAL \inst2|Mux5~37_combout\ : std_logic;
SIGNAL \inst2|Mux5~38_combout\ : std_logic;
SIGNAL \inst2|Mux5~39_combout\ : std_logic;
SIGNAL \inst2|Mux5~42_combout\ : std_logic;
SIGNAL \inst2|Mux5~6_combout\ : std_logic;
SIGNAL \inst2|Mux5~7_combout\ : std_logic;
SIGNAL \inst2|Mux5~8_combout\ : std_logic;
SIGNAL \inst2|Mux5~11_combout\ : std_logic;
SIGNAL \inst2|Mux5~89_combout\ : std_logic;
SIGNAL \inst2|Mux5~9_combout\ : std_logic;
SIGNAL \inst2|Mux5~10_combout\ : std_logic;
SIGNAL \inst2|Mux5~12_combout\ : std_logic;
SIGNAL \inst2|Mux5~14_combout\ : std_logic;
SIGNAL \inst2|Mux5~21_combout\ : std_logic;
SIGNAL \inst2|Mux5~22_combout\ : std_logic;
SIGNAL \inst2|Mux5~15_combout\ : std_logic;
SIGNAL \inst2|Mux5~17_combout\ : std_logic;
SIGNAL \inst2|Mux5~18_combout\ : std_logic;
SIGNAL \inst2|Mux5~19_combout\ : std_logic;
SIGNAL \inst2|Mux5~13_combout\ : std_logic;
SIGNAL \inst2|Mux5~20_combout\ : std_logic;
SIGNAL \inst2|Mux5~23_combout\ : std_logic;
SIGNAL \inst2|Mux5~29_combout\ : std_logic;
SIGNAL \inst2|Mux5~27_combout\ : std_logic;
SIGNAL \inst2|Mux5~28_combout\ : std_logic;
SIGNAL \inst2|Mux5~30_combout\ : std_logic;
SIGNAL \inst2|Mux6~11_combout\ : std_logic;
SIGNAL \inst2|Mux5~31_combout\ : std_logic;
SIGNAL \inst2|Mux5~32_combout\ : std_logic;
SIGNAL \inst2|Mux5~33_combout\ : std_logic;
SIGNAL \inst2|Mux5~34_combout\ : std_logic;
SIGNAL \inst2|Mux5~43_combout\ : std_logic;
SIGNAL \inst2|Mux5~64_combout\ : std_logic;
SIGNAL \inst2|Mux5~65_combout\ : std_logic;
SIGNAL \inst2|Mux5~66_combout\ : std_logic;
SIGNAL \inst2|Mux5~44_combout\ : std_logic;
SIGNAL \inst2|Mux5~45_combout\ : std_logic;
SIGNAL \inst2|Mux5~53_combout\ : std_logic;
SIGNAL \inst2|Mux5~54_combout\ : std_logic;
SIGNAL \inst2|Mux5~60_combout\ : std_logic;
SIGNAL \inst2|Mux5~61_combout\ : std_logic;
SIGNAL \inst2|Mux5~55_combout\ : std_logic;
SIGNAL \inst2|Mux5~56_combout\ : std_logic;
SIGNAL \inst2|Mux5~57_combout\ : std_logic;
SIGNAL \inst2|Mux5~58_combout\ : std_logic;
SIGNAL \inst2|Mux5~59_combout\ : std_logic;
SIGNAL \inst2|Mux5~62_combout\ : std_logic;
SIGNAL \inst2|Mux5~51_combout\ : std_logic;
SIGNAL \inst2|Mux5~46_combout\ : std_logic;
SIGNAL \inst2|Mux5~48_combout\ : std_logic;
SIGNAL \inst2|Mux5~49_combout\ : std_logic;
SIGNAL \inst2|Mux5~47_combout\ : std_logic;
SIGNAL \inst2|Mux5~50_combout\ : std_logic;
SIGNAL \inst2|Mux5~52_combout\ : std_logic;
SIGNAL \inst2|Mux5~63_combout\ : std_logic;
SIGNAL \inst2|Mux5~67_combout\ : std_logic;
SIGNAL \inst2|Mux5~68_combout\ : std_logic;
SIGNAL \inst2|Mux5~88_combout\ : std_logic;
SIGNAL \inst2|Mux6~98_combout\ : std_logic;
SIGNAL \inst2|Mux6~97_combout\ : std_logic;
SIGNAL \inst2|Mux6~99_combout\ : std_logic;
SIGNAL \inst2|Mux6~114_combout\ : std_logic;
SIGNAL \inst2|Mux6~112_combout\ : std_logic;
SIGNAL \inst2|Mux6~113_combout\ : std_logic;
SIGNAL \inst2|Mux6~115_combout\ : std_logic;
SIGNAL \inst2|Mux6~103_combout\ : std_logic;
SIGNAL \inst2|Mux6~101_combout\ : std_logic;
SIGNAL \inst2|Mux6~102_combout\ : std_logic;
SIGNAL \inst2|Mux6~104_combout\ : std_logic;
SIGNAL \inst2|Mux6~105_combout\ : std_logic;
SIGNAL \inst2|Mux6~106_combout\ : std_logic;
SIGNAL \inst2|Mux6~107_combout\ : std_logic;
SIGNAL \inst2|Mux6~109_combout\ : std_logic;
SIGNAL \inst2|Mux6~110_combout\ : std_logic;
SIGNAL \inst2|Mux6~116_combout\ : std_logic;
SIGNAL \inst2|Mux6~89_combout\ : std_logic;
SIGNAL \inst2|Mux6~90_combout\ : std_logic;
SIGNAL \inst2|Mux6~91_combout\ : std_logic;
SIGNAL \inst2|Mux6~95_combout\ : std_logic;
SIGNAL \inst2|Mux6~168_combout\ : std_logic;
SIGNAL \inst2|Mux6~169_combout\ : std_logic;
SIGNAL \inst2|Mux6~75_combout\ : std_logic;
SIGNAL \inst2|Mux6~76_combout\ : std_logic;
SIGNAL \inst2|Mux6~77_combout\ : std_logic;
SIGNAL \inst2|Mux6~79_combout\ : std_logic;
SIGNAL \inst2|Mux6~82_combout\ : std_logic;
SIGNAL \inst2|Equal0~1_combout\ : std_logic;
SIGNAL \inst2|Mux6~80_combout\ : std_logic;
SIGNAL \inst2|Mux6~83_combout\ : std_logic;
SIGNAL \inst2|Mux6~84_combout\ : std_logic;
SIGNAL \inst2|Mux6~88_combout\ : std_logic;
SIGNAL \inst2|Mux6~96_combout\ : std_logic;
SIGNAL \inst2|Mux6~117_combout\ : std_logic;
SIGNAL \inst2|Mux6~54_combout\ : std_logic;
SIGNAL \inst2|Mux6~163_combout\ : std_logic;
SIGNAL \inst2|Mux6~45_combout\ : std_logic;
SIGNAL \inst2|Mux6~43_combout\ : std_logic;
SIGNAL \inst2|Mux6~44_combout\ : std_logic;
SIGNAL \inst2|Mux6~46_combout\ : std_logic;
SIGNAL \inst2|Mux6~49_combout\ : std_logic;
SIGNAL \inst2|Mux6~50_combout\ : std_logic;
SIGNAL \inst2|Mux6~52_combout\ : std_logic;
SIGNAL \inst2|Mux6~47_combout\ : std_logic;
SIGNAL \inst2|Mux6~48_combout\ : std_logic;
SIGNAL \inst2|Mux6~53_combout\ : std_logic;
SIGNAL \inst2|Mux6~55_combout\ : std_logic;
SIGNAL \inst2|Mux6~56_combout\ : std_logic;
SIGNAL \inst2|Mux6~60_combout\ : std_logic;
SIGNAL \inst2|Mux6~61_combout\ : std_logic;
SIGNAL \inst2|Mux6~62_combout\ : std_logic;
SIGNAL \inst2|Equal0~3_combout\ : std_logic;
SIGNAL \inst2|Mux6~63_combout\ : std_logic;
SIGNAL \inst2|Mux6~64_combout\ : std_logic;
SIGNAL \inst2|Mux6~59_combout\ : std_logic;
SIGNAL \inst2|Mux6~57_combout\ : std_logic;
SIGNAL \inst2|Mux6~58_combout\ : std_logic;
SIGNAL \inst2|Mux6~161_combout\ : std_logic;
SIGNAL \inst2|Mux6~69_combout\ : std_logic;
SIGNAL \inst2|Mux6~70_combout\ : std_logic;
SIGNAL \inst2|Mux6~118_combout\ : std_logic;
SIGNAL \inst2|Mux6~121_combout\ : std_logic;
SIGNAL \inst2|Mux6~119_combout\ : std_logic;
SIGNAL \inst2|Mux6~120_combout\ : std_logic;
SIGNAL \inst2|Mux6~122_combout\ : std_logic;
SIGNAL \inst2|Mux6~124_combout\ : std_logic;
SIGNAL \inst2|Mux6~123_combout\ : std_logic;
SIGNAL \inst2|Mux6~125_combout\ : std_logic;
SIGNAL \inst2|Mux6~126_combout\ : std_logic;
SIGNAL \inst2|Mux6~127_combout\ : std_logic;
SIGNAL \inst2|Mux6~129_combout\ : std_logic;
SIGNAL \inst2|Mux6~128_combout\ : std_logic;
SIGNAL \inst2|Mux6~130_combout\ : std_logic;
SIGNAL \inst2|Mux6~131_combout\ : std_logic;
SIGNAL \inst2|Mux6~136_combout\ : std_logic;
SIGNAL \inst2|Mux6~162_combout\ : std_logic;
SIGNAL \inst2|Mux6~137_combout\ : std_logic;
SIGNAL \inst2|Mux6~138_combout\ : std_logic;
SIGNAL \inst2|Mux6~139_combout\ : std_logic;
SIGNAL \inst2|Mux6~140_combout\ : std_logic;
SIGNAL \inst2|Mux6~153_combout\ : std_logic;
SIGNAL \inst2|Mux6~154_combout\ : std_logic;
SIGNAL \inst2|Mux6~155_combout\ : std_logic;
SIGNAL \inst2|Mux6~156_combout\ : std_logic;
SIGNAL \inst2|Mux6~143_combout\ : std_logic;
SIGNAL \inst2|Mux6~141_combout\ : std_logic;
SIGNAL \inst2|Mux6~142_combout\ : std_logic;
SIGNAL \inst2|Mux6~144_combout\ : std_logic;
SIGNAL \inst2|Mux6~148_combout\ : std_logic;
SIGNAL \inst2|Mux6~149_combout\ : std_logic;
SIGNAL \inst2|Mux6~150_combout\ : std_logic;
SIGNAL \inst2|Mux6~151_combout\ : std_logic;
SIGNAL \inst2|Mux6~146_combout\ : std_logic;
SIGNAL \inst2|Mux6~145_combout\ : std_logic;
SIGNAL \inst2|Mux6~147_combout\ : std_logic;
SIGNAL \inst2|Mux6~152_combout\ : std_logic;
SIGNAL \inst2|Mux6~157_combout\ : std_logic;
SIGNAL \inst2|Mux6~158_combout\ : std_logic;
SIGNAL \inst2|Mux6~159_combout\ : std_logic;
SIGNAL \inst2|Mux6~164_combout\ : std_logic;
SIGNAL \inst2|Mux6~165_combout\ : std_logic;
SIGNAL \inst2|Mux7~182_combout\ : std_logic;
SIGNAL \inst2|Mux7~181_combout\ : std_logic;
SIGNAL \inst2|Mux7~183_combout\ : std_logic;
SIGNAL \inst2|Mux7~184_combout\ : std_logic;
SIGNAL \inst2|Mux7~185_combout\ : std_logic;
SIGNAL \inst2|Mux7~166_combout\ : std_logic;
SIGNAL \inst2|Mux7~170_combout\ : std_logic;
SIGNAL \inst2|Mux7~167_combout\ : std_logic;
SIGNAL \inst2|Mux7~168_combout\ : std_logic;
SIGNAL \inst2|Mux7~169_combout\ : std_logic;
SIGNAL \inst2|Mux7~171_combout\ : std_logic;
SIGNAL \inst2|Mux7~186_combout\ : std_logic;
SIGNAL \inst2|Mux7~98_combout\ : std_logic;
SIGNAL \inst2|Mux7~99_combout\ : std_logic;
SIGNAL \inst2|Mux7~100_combout\ : std_logic;
SIGNAL \inst2|Mux7~106_combout\ : std_logic;
SIGNAL \inst2|Mux7~103_combout\ : std_logic;
SIGNAL \inst2|Mux7~161_combout\ : std_logic;
SIGNAL \inst2|Mux7~162_combout\ : std_logic;
SIGNAL \inst2|Mux7~163_combout\ : std_logic;
SIGNAL \inst2|Mux7~107_combout\ : std_logic;
SIGNAL \inst2|Mux7~108_combout\ : std_logic;
SIGNAL \inst2|Mux7~164_combout\ : std_logic;
SIGNAL \inst2|Mux7~155_combout\ : std_logic;
SIGNAL \inst2|Mux7~156_combout\ : std_logic;
SIGNAL \inst2|Mux7~158_combout\ : std_logic;
SIGNAL \inst2|Mux7~157_combout\ : std_logic;
SIGNAL \inst2|Mux7~159_combout\ : std_logic;
SIGNAL \inst2|Mux7~151_combout\ : std_logic;
SIGNAL \inst2|Mux7~152_combout\ : std_logic;
SIGNAL \inst2|Mux7~153_combout\ : std_logic;
SIGNAL \inst2|Mux7~146_combout\ : std_logic;
SIGNAL \inst2|Mux7~147_combout\ : std_logic;
SIGNAL \inst2|Mux7~148_combout\ : std_logic;
SIGNAL \inst2|Mux7~150_combout\ : std_logic;
SIGNAL \inst2|Mux7~154_combout\ : std_logic;
SIGNAL \inst2|Mux7~160_combout\ : std_logic;
SIGNAL \inst2|Mux7~165_combout\ : std_logic;
SIGNAL \inst2|Mux7~187_combout\ : std_logic;
SIGNAL \inst2|Mux7~69_combout\ : std_logic;
SIGNAL \inst2|Mux7~70_combout\ : std_logic;
SIGNAL \inst2|Mux7~71_combout\ : std_logic;
SIGNAL \inst2|Mux7~72_combout\ : std_logic;
SIGNAL \inst2|Mux7~66_combout\ : std_logic;
SIGNAL \inst2|Mux7~64_combout\ : std_logic;
SIGNAL \inst2|Mux7~63_combout\ : std_logic;
SIGNAL \inst2|Mux7~65_combout\ : std_logic;
SIGNAL \inst2|Mux7~62_combout\ : std_logic;
SIGNAL \inst2|Mux7~67_combout\ : std_logic;
SIGNAL \inst2|Mux7~60_combout\ : std_logic;
SIGNAL \inst2|Mux7~61_combout\ : std_logic;
SIGNAL \inst2|Mux7~193_combout\ : std_logic;
SIGNAL \inst2|Mux7~194_combout\ : std_logic;
SIGNAL \inst2|Mux7~68_combout\ : std_logic;
SIGNAL \inst2|Mux7~73_combout\ : std_logic;
SIGNAL \inst2|Mux7~14_combout\ : std_logic;
SIGNAL \inst2|Mux7~13_combout\ : std_logic;
SIGNAL \inst2|Mux7~199_combout\ : std_logic;
SIGNAL \inst2|Mux7~200_combout\ : std_logic;
SIGNAL \inst2|Mux7~8_combout\ : std_logic;
SIGNAL \inst2|Mux7~7_combout\ : std_logic;
SIGNAL \inst2|Mux7~10_combout\ : std_logic;
SIGNAL \inst2|Mux7~9_combout\ : std_logic;
SIGNAL \inst2|Mux7~11_combout\ : std_logic;
SIGNAL \inst2|Mux7~4_combout\ : std_logic;
SIGNAL \inst2|Mux7~3_combout\ : std_logic;
SIGNAL \inst2|Mux7~5_combout\ : std_logic;
SIGNAL \inst2|Mux7~6_combout\ : std_logic;
SIGNAL \inst2|Mux7~12_combout\ : std_logic;
SIGNAL \inst2|Mux7~15_combout\ : std_logic;
SIGNAL \inst2|Mux7~18_combout\ : std_logic;
SIGNAL \inst2|Mux7~17_combout\ : std_logic;
SIGNAL \inst2|Mux7~19_combout\ : std_logic;
SIGNAL \inst2|Mux7~16_combout\ : std_logic;
SIGNAL \inst2|Mux7~20_combout\ : std_logic;
SIGNAL \inst2|Mux7~21_combout\ : std_logic;
SIGNAL \inst2|Mux7~26_combout\ : std_logic;
SIGNAL \inst2|Mux7~30_combout\ : std_logic;
SIGNAL \inst2|Mux7~28_combout\ : std_logic;
SIGNAL \inst2|Mux7~27_combout\ : std_logic;
SIGNAL \inst2|Mux7~29_combout\ : std_logic;
SIGNAL \inst2|Mux7~31_combout\ : std_logic;
SIGNAL \inst2|Mux7~24_combout\ : std_logic;
SIGNAL \inst2|Mux7~22_combout\ : std_logic;
SIGNAL \inst2|Mux7~23_combout\ : std_logic;
SIGNAL \inst2|Mux7~25_combout\ : std_logic;
SIGNAL \inst2|Mux7~32_combout\ : std_logic;
SIGNAL \inst2|Mux7~35_combout\ : std_logic;
SIGNAL \inst2|Mux7~52_combout\ : std_logic;
SIGNAL \inst2|Mux7~51_combout\ : std_logic;
SIGNAL \inst2|Mux7~195_combout\ : std_logic;
SIGNAL \inst2|Mux7~196_combout\ : std_logic;
SIGNAL \inst2|Mux7~45_combout\ : std_logic;
SIGNAL \inst2|Mux7~46_combout\ : std_logic;
SIGNAL \inst2|Mux7~47_combout\ : std_logic;
SIGNAL \inst2|Mux7~48_combout\ : std_logic;
SIGNAL \inst2|Mux7~49_combout\ : std_logic;
SIGNAL \inst2|Mux7~41_combout\ : std_logic;
SIGNAL \inst2|Mux7~42_combout\ : std_logic;
SIGNAL \inst2|Mux7~43_combout\ : std_logic;
SIGNAL \inst2|Mux7~44_combout\ : std_logic;
SIGNAL \inst2|Mux7~50_combout\ : std_logic;
SIGNAL \inst2|Mux7~53_combout\ : std_logic;
SIGNAL \inst2|Mux7~54_combout\ : std_logic;
SIGNAL \inst2|Mux7~74_combout\ : std_logic;
SIGNAL \inst2|Mux7~114_combout\ : std_logic;
SIGNAL \inst2|Mux7~111_combout\ : std_logic;
SIGNAL \inst2|Mux7~112_combout\ : std_logic;
SIGNAL \inst2|Mux7~113_combout\ : std_logic;
SIGNAL \inst2|Mux7~115_combout\ : std_logic;
SIGNAL \inst2|Mux7~127_combout\ : std_logic;
SIGNAL \inst2|Mux7~124_combout\ : std_logic;
SIGNAL \inst2|Mux7~125_combout\ : std_logic;
SIGNAL \inst2|Mux7~126_combout\ : std_logic;
SIGNAL \inst2|Mux7~128_combout\ : std_logic;
SIGNAL \inst2|Mux7~117_combout\ : std_logic;
SIGNAL \inst2|Mux7~116_combout\ : std_logic;
SIGNAL \inst2|Mux7~118_combout\ : std_logic;
SIGNAL \inst2|Mux7~119_combout\ : std_logic;
SIGNAL \inst2|Mux7~120_combout\ : std_logic;
SIGNAL \inst2|Mux7~121_combout\ : std_logic;
SIGNAL \inst2|Mux7~122_combout\ : std_logic;
SIGNAL \inst2|Mux7~191_combout\ : std_logic;
SIGNAL \inst2|Mux7~192_combout\ : std_logic;
SIGNAL \inst2|Mux7~123_combout\ : std_logic;
SIGNAL \inst2|Mux7~129_combout\ : std_logic;
SIGNAL \inst2|Mux7~96_combout\ : std_logic;
SIGNAL \inst2|Mux7~97_combout\ : std_logic;
SIGNAL \inst2|Mux7~109_combout\ : std_logic;
SIGNAL \inst2|Mux7~130_combout\ : std_logic;
SIGNAL \inst2|Mux7~92_combout\ : std_logic;
SIGNAL \inst2|Mux7~94_combout\ : std_logic;
SIGNAL \inst2|Mux7~75_combout\ : std_logic;
SIGNAL \inst2|Mux7~77_combout\ : std_logic;
SIGNAL \inst2|Mux7~78_combout\ : std_logic;
SIGNAL \inst2|Mux7~80_combout\ : std_logic;
SIGNAL \inst2|Mux7~81_combout\ : std_logic;
SIGNAL \inst2|Mux7~82_combout\ : std_logic;
SIGNAL \inst2|Mux7~84_combout\ : std_logic;
SIGNAL \inst2|Mux7~83_combout\ : std_logic;
SIGNAL \inst2|Mux7~85_combout\ : std_logic;
SIGNAL \inst2|Mux7~87_combout\ : std_logic;
SIGNAL \inst2|Mux7~86_combout\ : std_logic;
SIGNAL \inst2|Mux7~89_combout\ : std_logic;
SIGNAL \inst2|Mux7~88_combout\ : std_logic;
SIGNAL \inst2|Mux7~90_combout\ : std_logic;
SIGNAL \inst2|Mux7~91_combout\ : std_logic;
SIGNAL \inst2|Mux7~95_combout\ : std_logic;
SIGNAL \inst2|Mux7~140_combout\ : std_logic;
SIGNAL \inst2|Mux7~141_combout\ : std_logic;
SIGNAL \inst2|Mux7~188_combout\ : std_logic;
SIGNAL \inst|LessThan1~1_cout\ : std_logic;
SIGNAL \inst|LessThan1~3_cout\ : std_logic;
SIGNAL \inst|LessThan1~5_cout\ : std_logic;
SIGNAL \inst|LessThan1~7_cout\ : std_logic;
SIGNAL \inst|LessThan1~9_cout\ : std_logic;
SIGNAL \inst|LessThan1~11_cout\ : std_logic;
SIGNAL \inst|LessThan1~13_cout\ : std_logic;
SIGNAL \inst|LessThan1~14_combout\ : std_logic;
SIGNAL \inst|pwm_output1~q\ : std_logic;
SIGNAL \inst|LessThan2~1_cout\ : std_logic;
SIGNAL \inst|LessThan2~3_cout\ : std_logic;
SIGNAL \inst|LessThan2~5_cout\ : std_logic;
SIGNAL \inst|LessThan2~7_cout\ : std_logic;
SIGNAL \inst|LessThan2~9_cout\ : std_logic;
SIGNAL \inst|LessThan2~11_cout\ : std_logic;
SIGNAL \inst|LessThan2~13_cout\ : std_logic;
SIGNAL \inst|LessThan2~14_combout\ : std_logic;
SIGNAL \inst|pwm_output2~q\ : std_logic;
SIGNAL \inst2|Mux2~22_combout\ : std_logic;
SIGNAL \inst2|Mux2~12_combout\ : std_logic;
SIGNAL \inst2|Mux2~13_combout\ : std_logic;
SIGNAL \inst2|Mux2~11_combout\ : std_logic;
SIGNAL \inst2|Mux2~14_combout\ : std_logic;
SIGNAL \inst2|Mux2~15_combout\ : std_logic;
SIGNAL \inst2|Mux2~6_combout\ : std_logic;
SIGNAL \inst2|Mux2~7_combout\ : std_logic;
SIGNAL \inst2|Mux2~4_combout\ : std_logic;
SIGNAL \inst2|Mux2~8_combout\ : std_logic;
SIGNAL \inst2|Mux2~16_combout\ : std_logic;
SIGNAL \inst2|Mux2~18_combout\ : std_logic;
SIGNAL \inst2|Mux2~19_combout\ : std_logic;
SIGNAL \inst2|Mux2~20_combout\ : std_logic;
SIGNAL \inst2|Mux2~21_combout\ : std_logic;
SIGNAL \inst|LessThan3~1_cout\ : std_logic;
SIGNAL \inst|LessThan3~3_cout\ : std_logic;
SIGNAL \inst|LessThan3~5_cout\ : std_logic;
SIGNAL \inst|LessThan3~7_cout\ : std_logic;
SIGNAL \inst|LessThan3~9_cout\ : std_logic;
SIGNAL \inst|LessThan3~11_cout\ : std_logic;
SIGNAL \inst|LessThan3~13_cout\ : std_logic;
SIGNAL \inst|LessThan3~14_combout\ : std_logic;
SIGNAL \inst|pwm_output3~q\ : std_logic;
SIGNAL \inst2|auxA\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|s_counter\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst4|s_triangular_counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|ALT_INV_Add2~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_s_triangular_counter\ : std_logic_vector(7 DOWNTO 6);

BEGIN

pwm0 <= ww_pwm0;
ww_clk <= clk;
ww_rst <= rst;
pwm1 <= ww_pwm1;
pwm2 <= ww_pwm2;
pwm3 <= ww_pwm3;
sine <= ww_sine;
triang0 <= ww_triang0;
triang1 <= ww_triang1;
triang2 <= ww_triang2;
triang3 <= ww_triang3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\inst1|s_clk_out_internal~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|s_clk_out_internal~q\);

\inst3|s_clk_out_internal~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst3|s_clk_out_internal~q\);
\inst4|ALT_INV_Add2~0_combout\ <= NOT \inst4|Add2~0_combout\;
\inst4|ALT_INV_s_triangular_counter\(6) <= NOT \inst4|s_triangular_counter\(6);
\inst4|ALT_INV_s_triangular_counter\(7) <= NOT \inst4|s_triangular_counter\(7);

-- Location: LCCOMB_X51_Y21_N2
\inst1|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Add0~0_combout\ = \inst1|s_counter\(0) $ (VCC)
-- \inst1|Add0~1\ = CARRY(\inst1|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_counter\(0),
	datad => VCC,
	combout => \inst1|Add0~0_combout\,
	cout => \inst1|Add0~1\);

-- Location: LCCOMB_X51_Y21_N4
\inst1|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Add0~2_combout\ = (\inst1|s_counter\(1) & (!\inst1|Add0~1\)) # (!\inst1|s_counter\(1) & ((\inst1|Add0~1\) # (GND)))
-- \inst1|Add0~3\ = CARRY((!\inst1|Add0~1\) # (!\inst1|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_counter\(1),
	datad => VCC,
	cin => \inst1|Add0~1\,
	combout => \inst1|Add0~2_combout\,
	cout => \inst1|Add0~3\);

-- Location: LCCOMB_X51_Y21_N6
\inst1|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Add0~4_combout\ = (\inst1|s_counter\(2) & (\inst1|Add0~3\ $ (GND))) # (!\inst1|s_counter\(2) & (!\inst1|Add0~3\ & VCC))
-- \inst1|Add0~5\ = CARRY((\inst1|s_counter\(2) & !\inst1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_counter\(2),
	datad => VCC,
	cin => \inst1|Add0~3\,
	combout => \inst1|Add0~4_combout\,
	cout => \inst1|Add0~5\);

-- Location: LCCOMB_X51_Y21_N8
\inst1|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Add0~6_combout\ = (\inst1|s_counter\(3) & (!\inst1|Add0~5\)) # (!\inst1|s_counter\(3) & ((\inst1|Add0~5\) # (GND)))
-- \inst1|Add0~7\ = CARRY((!\inst1|Add0~5\) # (!\inst1|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_counter\(3),
	datad => VCC,
	cin => \inst1|Add0~5\,
	combout => \inst1|Add0~6_combout\,
	cout => \inst1|Add0~7\);

-- Location: LCCOMB_X51_Y21_N10
\inst1|Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Add0~8_combout\ = (\inst1|s_counter\(4) & (\inst1|Add0~7\ $ (GND))) # (!\inst1|s_counter\(4) & (!\inst1|Add0~7\ & VCC))
-- \inst1|Add0~9\ = CARRY((\inst1|s_counter\(4) & !\inst1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_counter\(4),
	datad => VCC,
	cin => \inst1|Add0~7\,
	combout => \inst1|Add0~8_combout\,
	cout => \inst1|Add0~9\);

-- Location: LCCOMB_X51_Y21_N12
\inst1|Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Add0~10_combout\ = (\inst1|s_counter\(5) & (!\inst1|Add0~9\)) # (!\inst1|s_counter\(5) & ((\inst1|Add0~9\) # (GND)))
-- \inst1|Add0~11\ = CARRY((!\inst1|Add0~9\) # (!\inst1|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_counter\(5),
	datad => VCC,
	cin => \inst1|Add0~9\,
	combout => \inst1|Add0~10_combout\,
	cout => \inst1|Add0~11\);

-- Location: LCCOMB_X51_Y21_N14
\inst1|Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Add0~12_combout\ = (\inst1|s_counter\(6) & (\inst1|Add0~11\ $ (GND))) # (!\inst1|s_counter\(6) & (!\inst1|Add0~11\ & VCC))
-- \inst1|Add0~13\ = CARRY((\inst1|s_counter\(6) & !\inst1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_counter\(6),
	datad => VCC,
	cin => \inst1|Add0~11\,
	combout => \inst1|Add0~12_combout\,
	cout => \inst1|Add0~13\);

-- Location: LCCOMB_X51_Y21_N16
\inst1|Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Add0~14_combout\ = (\inst1|s_counter\(7) & (!\inst1|Add0~13\)) # (!\inst1|s_counter\(7) & ((\inst1|Add0~13\) # (GND)))
-- \inst1|Add0~15\ = CARRY((!\inst1|Add0~13\) # (!\inst1|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_counter\(7),
	datad => VCC,
	cin => \inst1|Add0~13\,
	combout => \inst1|Add0~14_combout\,
	cout => \inst1|Add0~15\);

-- Location: LCCOMB_X51_Y21_N18
\inst1|Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Add0~16_combout\ = \inst1|s_counter\(8) $ (!\inst1|Add0~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_counter\(8),
	cin => \inst1|Add0~15\,
	combout => \inst1|Add0~16_combout\);

-- Location: LCCOMB_X36_Y35_N4
\inst2|Mux4~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~8_combout\ = (\inst2|auxA\(7) & (\inst2|auxA\(4) & \inst2|Mux2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(4),
	datad => \inst2|Mux2~2_combout\,
	combout => \inst2|Mux4~8_combout\);

-- Location: LCCOMB_X37_Y34_N0
\inst2|Mux4~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~20_combout\ = (\inst2|auxA\(8) & (!\inst2|auxA\(2))) # (!\inst2|auxA\(8) & ((!\inst2|auxA\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|auxA\(2),
	datac => \inst2|auxA\(8),
	datad => \inst2|auxA\(5),
	combout => \inst2|Mux4~20_combout\);

-- Location: LCCOMB_X35_Y33_N20
\inst2|Mux4~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~41_combout\ = (\inst2|auxA\(9) & (!\inst2|auxA\(8) & \inst2|Mux2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|auxA\(9),
	datac => \inst2|auxA\(8),
	datad => \inst2|Mux2~2_combout\,
	combout => \inst2|Mux4~41_combout\);

-- Location: LCCOMB_X35_Y33_N22
\inst2|Mux4~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~53_combout\ = (\inst2|auxA\(4) & (((!\inst2|auxA\(9))))) # (!\inst2|auxA\(4) & ((\inst2|auxA\(2)) # ((\inst2|auxA\(3)) # (\inst2|auxA\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(2),
	datab => \inst2|auxA\(4),
	datac => \inst2|auxA\(3),
	datad => \inst2|auxA\(9),
	combout => \inst2|Mux4~53_combout\);

-- Location: LCCOMB_X35_Y35_N16
\inst2|Mux5~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~24_combout\ = (!\inst2|auxA\(6) & ((\inst2|auxA\(2)) # ((\inst2|auxA\(0)) # (\inst2|auxA\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(2),
	datab => \inst2|auxA\(0),
	datac => \inst2|auxA\(6),
	datad => \inst2|auxA\(3),
	combout => \inst2|Mux5~24_combout\);

-- Location: LCCOMB_X35_Y35_N22
\inst2|Mux5~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~25_combout\ = (\inst2|auxA\(1) & (((\inst2|Mux4~10_combout\)) # (!\inst2|auxA\(6)))) # (!\inst2|auxA\(1) & (((\inst2|Mux5~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(1),
	datac => \inst2|Mux4~10_combout\,
	datad => \inst2|Mux5~24_combout\,
	combout => \inst2|Mux5~25_combout\);

-- Location: LCCOMB_X35_Y35_N12
\inst2|Mux5~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~26_combout\ = (\inst2|auxA\(4) & ((\inst2|auxA\(6)) # ((\inst2|Mux4~49_combout\)))) # (!\inst2|auxA\(4) & (((\inst2|Mux5~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(4),
	datab => \inst2|auxA\(6),
	datac => \inst2|Mux5~25_combout\,
	datad => \inst2|Mux4~49_combout\,
	combout => \inst2|Mux5~26_combout\);

-- Location: LCCOMB_X35_Y36_N22
\inst2|Mux5~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~75_combout\ = (\inst2|auxA\(9) & (\inst2|auxA\(5))) # (!\inst2|auxA\(9) & ((\inst2|auxA\(5) & ((!\inst2|Mux5~66_combout\))) # (!\inst2|auxA\(5) & (!\inst2|Mux5~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(9),
	datab => \inst2|auxA\(5),
	datac => \inst2|Mux5~45_combout\,
	datad => \inst2|Mux5~66_combout\,
	combout => \inst2|Mux5~75_combout\);

-- Location: LCCOMB_X38_Y32_N8
\inst2|Mux6~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~12_combout\ = (\inst2|auxA\(7) & (!\inst2|auxA\(0) & (!\inst2|auxA\(1) & !\inst2|auxA\(8)))) # (!\inst2|auxA\(7) & (\inst2|auxA\(8) $ (((\inst2|auxA\(0)) # (\inst2|auxA\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(0),
	datac => \inst2|auxA\(1),
	datad => \inst2|auxA\(8),
	combout => \inst2|Mux6~12_combout\);

-- Location: LCCOMB_X38_Y32_N26
\inst2|Mux6~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~13_combout\ = (\inst2|auxA\(3) & ((\inst2|Mux6~175_combout\ & ((!\inst2|Mux6~12_combout\))) # (!\inst2|Mux6~175_combout\ & (\inst2|Mux6~10_combout\)))) # (!\inst2|auxA\(3) & (((\inst2|Mux6~175_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux6~10_combout\,
	datab => \inst2|auxA\(3),
	datac => \inst2|Mux6~12_combout\,
	datad => \inst2|Mux6~175_combout\,
	combout => \inst2|Mux6~13_combout\);

-- Location: LCCOMB_X38_Y32_N12
\inst2|Mux6~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~14_combout\ = (\inst2|auxA\(9) & (((!\inst2|auxA\(1))) # (!\inst2|auxA\(7)))) # (!\inst2|auxA\(9) & (\inst2|auxA\(8) & (\inst2|auxA\(7) $ (!\inst2|auxA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(9),
	datac => \inst2|auxA\(1),
	datad => \inst2|auxA\(8),
	combout => \inst2|Mux6~14_combout\);

-- Location: LCCOMB_X38_Y32_N30
\inst2|Mux6~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~15_combout\ = (\inst2|auxA\(1) & ((\inst2|auxA\(8) & (!\inst2|auxA\(7))) # (!\inst2|auxA\(8) & ((\inst2|auxA\(9)))))) # (!\inst2|auxA\(1) & (((\inst2|auxA\(9) & \inst2|auxA\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(9),
	datac => \inst2|auxA\(1),
	datad => \inst2|auxA\(8),
	combout => \inst2|Mux6~15_combout\);

-- Location: LCCOMB_X38_Y32_N24
\inst2|Mux6~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~16_combout\ = (\inst2|auxA\(7) & ((\inst2|auxA\(0) $ (!\inst2|Mux6~14_combout\)) # (!\inst2|Mux6~15_combout\))) # (!\inst2|auxA\(7) & (\inst2|Mux6~15_combout\ & ((\inst2|auxA\(0)) # (\inst2|Mux6~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(0),
	datac => \inst2|Mux6~15_combout\,
	datad => \inst2|Mux6~14_combout\,
	combout => \inst2|Mux6~16_combout\);

-- Location: LCCOMB_X38_Y32_N14
\inst2|Mux6~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~17_combout\ = (\inst2|auxA\(0) & (((!\inst2|Mux6~15_combout\ & \inst2|Mux6~14_combout\)))) # (!\inst2|auxA\(0) & (\inst2|Mux6~15_combout\ & ((\inst2|auxA\(7)) # (!\inst2|Mux6~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(0),
	datac => \inst2|Mux6~15_combout\,
	datad => \inst2|Mux6~14_combout\,
	combout => \inst2|Mux6~17_combout\);

-- Location: LCCOMB_X38_Y32_N28
\inst2|Mux6~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~18_combout\ = \inst2|Mux6~16_combout\ $ (((!\inst2|auxA\(3) & !\inst2|Mux6~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|auxA\(3),
	datac => \inst2|Mux6~17_combout\,
	datad => \inst2|Mux6~16_combout\,
	combout => \inst2|Mux6~18_combout\);

-- Location: LCCOMB_X38_Y32_N10
\inst2|Mux6~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~19_combout\ = (\inst2|auxA\(7) & ((\inst2|auxA\(3)) # ((\inst2|auxA\(1) & !\inst2|auxA\(8))))) # (!\inst2|auxA\(7) & (!\inst2|auxA\(3) & (!\inst2|auxA\(1) & \inst2|auxA\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(3),
	datac => \inst2|auxA\(1),
	datad => \inst2|auxA\(8),
	combout => \inst2|Mux6~19_combout\);

-- Location: LCCOMB_X38_Y32_N16
\inst2|Mux6~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~20_combout\ = (\inst2|auxA\(7) & ((\inst2|auxA\(3)) # (!\inst2|auxA\(8)))) # (!\inst2|auxA\(7) & (\inst2|auxA\(3) & !\inst2|auxA\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datac => \inst2|auxA\(3),
	datad => \inst2|auxA\(8),
	combout => \inst2|Mux6~20_combout\);

-- Location: LCCOMB_X38_Y32_N22
\inst2|Mux6~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~21_combout\ = (\inst2|Mux6~19_combout\ & (!\inst2|Mux6~20_combout\ & (\inst2|auxA\(9) $ (\inst2|auxA\(0))))) # (!\inst2|Mux6~19_combout\ & (\inst2|auxA\(9) $ (((!\inst2|Mux6~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux6~19_combout\,
	datab => \inst2|auxA\(9),
	datac => \inst2|auxA\(0),
	datad => \inst2|Mux6~20_combout\,
	combout => \inst2|Mux6~21_combout\);

-- Location: LCCOMB_X38_Y32_N0
\inst2|Mux6~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~22_combout\ = (\inst2|auxA\(2) & (\inst2|auxA\(5))) # (!\inst2|auxA\(2) & ((\inst2|auxA\(5) & ((\inst2|Mux6~18_combout\))) # (!\inst2|auxA\(5) & (\inst2|Mux6~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(2),
	datab => \inst2|auxA\(5),
	datac => \inst2|Mux6~21_combout\,
	datad => \inst2|Mux6~18_combout\,
	combout => \inst2|Mux6~22_combout\);

-- Location: LCCOMB_X38_Y32_N6
\inst2|Mux6~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~23_combout\ = (\inst2|auxA\(7) & (!\inst2|auxA\(1) & (!\inst2|auxA\(0) & !\inst2|auxA\(9)))) # (!\inst2|auxA\(7) & (((\inst2|auxA\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(1),
	datac => \inst2|auxA\(0),
	datad => \inst2|auxA\(9),
	combout => \inst2|Mux6~23_combout\);

-- Location: LCCOMB_X38_Y32_N4
\inst2|Mux6~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~24_combout\ = (\inst2|auxA\(7) & (!\inst2|auxA\(9) & ((\inst2|auxA\(1)) # (\inst2|auxA\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(1),
	datac => \inst2|auxA\(0),
	datad => \inst2|auxA\(9),
	combout => \inst2|Mux6~24_combout\);

-- Location: LCCOMB_X38_Y32_N2
\inst2|Mux6~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~25_combout\ = (\inst2|auxA\(3) & ((\inst2|auxA\(8) & ((\inst2|Mux6~23_combout\) # (!\inst2|Mux6~24_combout\))) # (!\inst2|auxA\(8) & (\inst2|Mux6~24_combout\ $ (\inst2|Mux6~23_combout\))))) # (!\inst2|auxA\(3) & ((\inst2|auxA\(8) & 
-- (\inst2|Mux6~24_combout\ $ (\inst2|Mux6~23_combout\))) # (!\inst2|auxA\(8) & ((\inst2|Mux6~24_combout\) # (!\inst2|Mux6~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111001111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(3),
	datab => \inst2|auxA\(8),
	datac => \inst2|Mux6~24_combout\,
	datad => \inst2|Mux6~23_combout\,
	combout => \inst2|Mux6~25_combout\);

-- Location: LCCOMB_X38_Y32_N20
\inst2|Mux6~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~26_combout\ = (\inst2|auxA\(2) & ((\inst2|Mux6~22_combout\ & (\inst2|Mux6~25_combout\)) # (!\inst2|Mux6~22_combout\ & ((\inst2|Mux6~13_combout\))))) # (!\inst2|auxA\(2) & (((\inst2|Mux6~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(2),
	datab => \inst2|Mux6~25_combout\,
	datac => \inst2|Mux6~13_combout\,
	datad => \inst2|Mux6~22_combout\,
	combout => \inst2|Mux6~26_combout\);

-- Location: LCCOMB_X34_Y37_N10
\inst2|Mux6~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~27_combout\ = (\inst2|auxA\(1)) # ((\inst2|auxA\(0) & \inst2|auxA\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(0),
	datac => \inst2|auxA\(7),
	datad => \inst2|auxA\(1),
	combout => \inst2|Mux6~27_combout\);

-- Location: LCCOMB_X39_Y35_N8
\inst2|Mux6~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~28_combout\ = (\inst2|auxA\(1)) # (\inst2|auxA\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|auxA\(1),
	datac => \inst2|auxA\(0),
	combout => \inst2|Mux6~28_combout\);

-- Location: LCCOMB_X39_Y35_N22
\inst2|Mux6~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~29_combout\ = (\inst2|auxA\(2) & ((\inst2|auxA\(9) & ((\inst2|auxA\(8)) # (!\inst2|Mux6~28_combout\))) # (!\inst2|auxA\(9) & ((!\inst2|auxA\(8)))))) # (!\inst2|auxA\(2) & (\inst2|auxA\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(2),
	datab => \inst2|auxA\(9),
	datac => \inst2|Mux6~28_combout\,
	datad => \inst2|auxA\(8),
	combout => \inst2|Mux6~29_combout\);

-- Location: LCCOMB_X39_Y35_N16
\inst2|Mux6~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~30_combout\ = (\inst2|auxA\(2) & ((\inst2|Mux6~28_combout\) # (\inst2|auxA\(9) $ (\inst2|auxA\(8))))) # (!\inst2|auxA\(2) & (\inst2|auxA\(9) & (\inst2|Mux6~28_combout\ & !\inst2|auxA\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(2),
	datab => \inst2|auxA\(9),
	datac => \inst2|Mux6~28_combout\,
	datad => \inst2|auxA\(8),
	combout => \inst2|Mux6~30_combout\);

-- Location: LCCOMB_X39_Y35_N10
\inst2|Mux6~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~31_combout\ = (\inst2|auxA\(2) & (\inst2|auxA\(1) & \inst2|auxA\(7))) # (!\inst2|auxA\(2) & ((!\inst2|auxA\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(2),
	datac => \inst2|auxA\(1),
	datad => \inst2|auxA\(7),
	combout => \inst2|Mux6~31_combout\);

-- Location: LCCOMB_X39_Y35_N4
\inst2|Mux6~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~32_combout\ = (\inst2|auxA\(2) & ((\inst2|auxA\(1) & ((!\inst2|auxA\(7)) # (!\inst2|auxA\(0)))) # (!\inst2|auxA\(1) & ((\inst2|auxA\(7)))))) # (!\inst2|auxA\(2) & (((\inst2|auxA\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(2),
	datab => \inst2|auxA\(1),
	datac => \inst2|auxA\(0),
	datad => \inst2|auxA\(7),
	combout => \inst2|Mux6~32_combout\);

-- Location: LCCOMB_X39_Y35_N2
\inst2|Mux6~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~33_combout\ = (!\inst2|auxA\(2) & (!\inst2|auxA\(1) & (!\inst2|auxA\(0) & \inst2|auxA\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(2),
	datab => \inst2|auxA\(1),
	datac => \inst2|auxA\(0),
	datad => \inst2|auxA\(7),
	combout => \inst2|Mux6~33_combout\);

-- Location: LCCOMB_X39_Y35_N20
\inst2|Mux6~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~34_combout\ = (\inst2|auxA\(9) & (\inst2|auxA\(8))) # (!\inst2|auxA\(9) & ((\inst2|auxA\(8) & (!\inst2|Mux6~32_combout\)) # (!\inst2|auxA\(8) & ((\inst2|Mux6~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(9),
	datab => \inst2|auxA\(8),
	datac => \inst2|Mux6~32_combout\,
	datad => \inst2|Mux6~33_combout\,
	combout => \inst2|Mux6~34_combout\);

-- Location: LCCOMB_X39_Y35_N30
\inst2|Mux6~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~35_combout\ = (\inst2|auxA\(9) & ((\inst2|Mux6~34_combout\ & ((\inst2|auxA\(7)))) # (!\inst2|Mux6~34_combout\ & (\inst2|Mux6~31_combout\)))) # (!\inst2|auxA\(9) & (((\inst2|Mux6~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux6~31_combout\,
	datab => \inst2|auxA\(9),
	datac => \inst2|auxA\(7),
	datad => \inst2|Mux6~34_combout\,
	combout => \inst2|Mux6~35_combout\);

-- Location: LCCOMB_X39_Y35_N0
\inst2|Mux6~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~36_combout\ = (\inst2|auxA\(3) & (\inst2|auxA\(5))) # (!\inst2|auxA\(3) & ((\inst2|auxA\(5) & ((\inst2|Mux6~160_combout\))) # (!\inst2|auxA\(5) & (\inst2|Mux6~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(3),
	datab => \inst2|auxA\(5),
	datac => \inst2|Mux6~35_combout\,
	datad => \inst2|Mux6~160_combout\,
	combout => \inst2|Mux6~36_combout\);

-- Location: LCCOMB_X37_Y37_N2
\inst2|Mux6~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~37_combout\ = (!\inst2|auxA\(8) & ((\inst2|auxA\(2)) # ((\inst2|auxA\(0) & \inst2|auxA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|auxA\(2),
	datac => \inst2|auxA\(0),
	datad => \inst2|auxA\(1),
	combout => \inst2|Mux6~37_combout\);

-- Location: LCCOMB_X37_Y37_N20
\inst2|Mux6~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~38_combout\ = (\inst2|auxA\(2) & ((\inst2|auxA\(7) & ((\inst2|auxA\(0)) # (\inst2|auxA\(1)))) # (!\inst2|auxA\(7) & (\inst2|auxA\(0) & \inst2|auxA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(0),
	datac => \inst2|auxA\(2),
	datad => \inst2|auxA\(1),
	combout => \inst2|Mux6~38_combout\);

-- Location: LCCOMB_X37_Y37_N22
\inst2|Mux6~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~39_combout\ = (\inst2|auxA\(9) & (\inst2|auxA\(7))) # (!\inst2|auxA\(9) & ((\inst2|auxA\(7) $ (!\inst2|Mux6~38_combout\)) # (!\inst2|auxA\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(9),
	datac => \inst2|auxA\(8),
	datad => \inst2|Mux6~38_combout\,
	combout => \inst2|Mux6~39_combout\);

-- Location: LCCOMB_X37_Y37_N0
\inst2|Mux6~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~40_combout\ = (!\inst2|auxA\(2) & (\inst2|auxA\(8) & ((!\inst2|auxA\(0)) # (!\inst2|auxA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(1),
	datab => \inst2|auxA\(0),
	datac => \inst2|auxA\(2),
	datad => \inst2|auxA\(8),
	combout => \inst2|Mux6~40_combout\);

-- Location: LCCOMB_X37_Y37_N30
\inst2|Mux6~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~41_combout\ = (\inst2|Mux6~39_combout\ & ((\inst2|Mux6~40_combout\) # ((!\inst2|auxA\(9))))) # (!\inst2|Mux6~39_combout\ & (((\inst2|auxA\(9) & !\inst2|Mux6~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux6~39_combout\,
	datab => \inst2|Mux6~40_combout\,
	datac => \inst2|auxA\(9),
	datad => \inst2|Mux6~37_combout\,
	combout => \inst2|Mux6~41_combout\);

-- Location: LCCOMB_X37_Y36_N10
\inst2|Mux6~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~42_combout\ = (\inst2|auxA\(3) & ((\inst2|Mux6~36_combout\ & (\inst2|Mux6~41_combout\)) # (!\inst2|Mux6~36_combout\ & ((\inst2|Mux6~173_combout\))))) # (!\inst2|auxA\(3) & (((\inst2|Mux6~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux6~41_combout\,
	datab => \inst2|auxA\(3),
	datac => \inst2|Mux6~173_combout\,
	datad => \inst2|Mux6~36_combout\,
	combout => \inst2|Mux6~42_combout\);

-- Location: LCCOMB_X38_Y38_N22
\inst2|Mux6~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~51_combout\ = (\inst2|auxA\(7) & (\inst2|auxA\(8) $ (((\inst2|auxA\(2) & !\inst2|auxA\(9)))))) # (!\inst2|auxA\(7) & ((\inst2|auxA\(8) & ((!\inst2|auxA\(9)))) # (!\inst2|auxA\(8) & (\inst2|auxA\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(2),
	datac => \inst2|auxA\(9),
	datad => \inst2|auxA\(8),
	combout => \inst2|Mux6~51_combout\);

-- Location: LCCOMB_X39_Y37_N24
\inst2|Mux6~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~65_combout\ = (\inst2|auxA\(7) & ((\inst2|auxA\(2)) # ((\inst2|auxA\(0) & \inst2|auxA\(1))))) # (!\inst2|auxA\(7) & (\inst2|auxA\(0) & (\inst2|auxA\(1) & \inst2|auxA\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(0),
	datab => \inst2|auxA\(7),
	datac => \inst2|auxA\(1),
	datad => \inst2|auxA\(2),
	combout => \inst2|Mux6~65_combout\);

-- Location: LCCOMB_X39_Y37_N18
\inst2|Mux6~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~66_combout\ = (\inst2|auxA\(8) & (((\inst2|auxA\(7))))) # (!\inst2|auxA\(8) & ((\inst2|auxA\(9) & ((!\inst2|Mux6~65_combout\))) # (!\inst2|auxA\(9) & (\inst2|auxA\(7) & \inst2|Mux6~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|auxA\(9),
	datac => \inst2|auxA\(7),
	datad => \inst2|Mux6~65_combout\,
	combout => \inst2|Mux6~66_combout\);

-- Location: LCCOMB_X39_Y37_N8
\inst2|Mux6~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~67_combout\ = (\inst2|auxA\(9) & (\inst2|auxA\(2) & ((\inst2|auxA\(0)) # (\inst2|auxA\(1))))) # (!\inst2|auxA\(9) & ((\inst2|auxA\(0)) # ((\inst2|auxA\(1)) # (\inst2|auxA\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(0),
	datab => \inst2|auxA\(9),
	datac => \inst2|auxA\(1),
	datad => \inst2|auxA\(2),
	combout => \inst2|Mux6~67_combout\);

-- Location: LCCOMB_X39_Y37_N22
\inst2|Mux6~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~68_combout\ = (\inst2|auxA\(8) & (\inst2|Mux6~67_combout\ & (\inst2|auxA\(9) $ (!\inst2|Mux6~66_combout\)))) # (!\inst2|auxA\(8) & (((\inst2|Mux6~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|auxA\(9),
	datac => \inst2|Mux6~67_combout\,
	datad => \inst2|Mux6~66_combout\,
	combout => \inst2|Mux6~68_combout\);

-- Location: LCCOMB_X34_Y35_N10
\inst2|Mux6~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~71_combout\ = (\inst2|auxA\(6) & ((\inst2|auxA\(3) & (\inst2|auxA\(5))) # (!\inst2|auxA\(3) & ((\inst2|auxA\(0)) # (!\inst2|auxA\(5)))))) # (!\inst2|auxA\(6) & ((\inst2|auxA\(3)) # ((!\inst2|auxA\(5) & \inst2|auxA\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(3),
	datac => \inst2|auxA\(5),
	datad => \inst2|auxA\(0),
	combout => \inst2|Mux6~71_combout\);

-- Location: LCCOMB_X34_Y35_N8
\inst2|Mux6~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~72_combout\ = \inst2|auxA\(5) $ (((\inst2|auxA\(3) & \inst2|auxA\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|auxA\(3),
	datac => \inst2|auxA\(5),
	datad => \inst2|auxA\(6),
	combout => \inst2|Mux6~72_combout\);

-- Location: LCCOMB_X34_Y35_N18
\inst2|Mux6~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~73_combout\ = (\inst2|auxA\(1) & (((\inst2|auxA\(2) & \inst2|Mux6~71_combout\)) # (!\inst2|Mux6~72_combout\))) # (!\inst2|auxA\(1) & (!\inst2|Mux6~72_combout\ & ((\inst2|auxA\(2)) # (\inst2|Mux6~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(1),
	datab => \inst2|auxA\(2),
	datac => \inst2|Mux6~72_combout\,
	datad => \inst2|Mux6~71_combout\,
	combout => \inst2|Mux6~73_combout\);

-- Location: LCCOMB_X34_Y35_N28
\inst2|Mux6~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~74_combout\ = (\inst2|auxA\(8) & (\inst2|auxA\(7))) # (!\inst2|auxA\(8) & ((\inst2|auxA\(7) & (\inst2|Mux7~0_combout\)) # (!\inst2|auxA\(7) & ((\inst2|Mux6~73_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|auxA\(7),
	datac => \inst2|Mux7~0_combout\,
	datad => \inst2|Mux6~73_combout\,
	combout => \inst2|Mux6~74_combout\);

-- Location: LCCOMB_X34_Y36_N22
\inst2|Mux6~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~78_combout\ = (\inst2|auxA\(7) & (((!\inst2|auxA\(8))))) # (!\inst2|auxA\(7) & ((\inst2|auxA\(0)) # ((\inst2|auxA\(8)) # (\inst2|auxA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(0),
	datab => \inst2|auxA\(7),
	datac => \inst2|auxA\(8),
	datad => \inst2|auxA\(1),
	combout => \inst2|Mux6~78_combout\);

-- Location: LCCOMB_X38_Y33_N12
\inst2|Mux6~81\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~81_combout\ = (!\inst2|auxA\(7) & ((\inst2|auxA\(5)) # (!\inst2|auxA\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|auxA\(8),
	datac => \inst2|auxA\(7),
	datad => \inst2|auxA\(5),
	combout => \inst2|Mux6~81_combout\);

-- Location: LCCOMB_X34_Y36_N0
\inst2|Mux6~85\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~85_combout\ = (!\inst2|auxA\(1) & (\inst2|auxA\(7) & (!\inst2|auxA\(0) & !\inst2|auxA\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(1),
	datab => \inst2|auxA\(7),
	datac => \inst2|auxA\(0),
	datad => \inst2|auxA\(5),
	combout => \inst2|Mux6~85_combout\);

-- Location: LCCOMB_X34_Y36_N26
\inst2|Mux6~86\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~86_combout\ = (\inst2|auxA\(7) & ((\inst2|auxA\(1)) # ((\inst2|auxA\(0)) # (!\inst2|auxA\(5))))) # (!\inst2|auxA\(7) & (\inst2|auxA\(5) & ((!\inst2|auxA\(0)) # (!\inst2|auxA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(1),
	datab => \inst2|auxA\(7),
	datac => \inst2|auxA\(0),
	datad => \inst2|auxA\(5),
	combout => \inst2|Mux6~86_combout\);

-- Location: LCCOMB_X34_Y36_N12
\inst2|Mux6~87\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~87_combout\ = (\inst2|auxA\(6) & ((\inst2|Mux6~167_combout\ & ((!\inst2|Mux6~86_combout\))) # (!\inst2|Mux6~167_combout\ & (\inst2|Mux6~85_combout\)))) # (!\inst2|auxA\(6) & (((\inst2|Mux6~167_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|Mux6~85_combout\,
	datac => \inst2|Mux6~86_combout\,
	datad => \inst2|Mux6~167_combout\,
	combout => \inst2|Mux6~87_combout\);

-- Location: LCCOMB_X37_Y38_N22
\inst2|Mux6~92\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~92_combout\ = (\inst2|auxA\(3) & (((!\inst2|auxA\(2) & !\inst2|auxA\(1))))) # (!\inst2|auxA\(3) & ((\inst2|auxA\(2)) # ((\inst2|auxA\(0) & \inst2|auxA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(0),
	datab => \inst2|auxA\(3),
	datac => \inst2|auxA\(2),
	datad => \inst2|auxA\(1),
	combout => \inst2|Mux6~92_combout\);

-- Location: LCCOMB_X37_Y38_N16
\inst2|Mux6~93\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~93_combout\ = (\inst2|auxA\(3) & ((\inst2|auxA\(0)) # ((\inst2|auxA\(2)) # (\inst2|auxA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(0),
	datab => \inst2|auxA\(3),
	datac => \inst2|auxA\(2),
	datad => \inst2|auxA\(1),
	combout => \inst2|Mux6~93_combout\);

-- Location: LCCOMB_X37_Y38_N10
\inst2|Mux6~94\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~94_combout\ = (\inst2|auxA\(5) & ((\inst2|auxA\(6)) # ((\inst2|Mux6~93_combout\)))) # (!\inst2|auxA\(5) & ((\inst2|Mux6~92_combout\ & (!\inst2|auxA\(6))) # (!\inst2|Mux6~92_combout\ & ((!\inst2|Mux6~93_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(5),
	datab => \inst2|auxA\(6),
	datac => \inst2|Mux6~92_combout\,
	datad => \inst2|Mux6~93_combout\,
	combout => \inst2|Mux6~94_combout\);

-- Location: LCCOMB_X35_Y38_N30
\inst2|Mux6~100\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~100_combout\ = (\inst2|auxA\(2) & (((!\inst2|auxA\(7))))) # (!\inst2|auxA\(2) & ((\inst2|auxA\(1) & ((!\inst2|auxA\(7)) # (!\inst2|auxA\(0)))) # (!\inst2|auxA\(1) & ((\inst2|auxA\(0)) # (\inst2|auxA\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(1),
	datab => \inst2|auxA\(2),
	datac => \inst2|auxA\(0),
	datad => \inst2|auxA\(7),
	combout => \inst2|Mux6~100_combout\);

-- Location: LCCOMB_X35_Y38_N6
\inst2|Mux6~108\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~108_combout\ = (\inst2|auxA\(2) & (!\inst2|auxA\(6) & ((\inst2|auxA\(1)) # (\inst2|auxA\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(1),
	datab => \inst2|auxA\(2),
	datac => \inst2|auxA\(0),
	datad => \inst2|auxA\(6),
	combout => \inst2|Mux6~108_combout\);

-- Location: LCCOMB_X36_Y38_N30
\inst2|Mux6~111\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~111_combout\ = (\inst2|auxA\(2)) # ((\inst2|auxA\(0) & ((\inst2|auxA\(6)) # (\inst2|auxA\(1)))) # (!\inst2|auxA\(0) & (\inst2|auxA\(6) & \inst2|auxA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(2),
	datab => \inst2|auxA\(0),
	datac => \inst2|auxA\(6),
	datad => \inst2|auxA\(1),
	combout => \inst2|Mux6~111_combout\);

-- Location: LCCOMB_X36_Y37_N18
\inst2|Mux6~132\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~132_combout\ = (\inst2|auxA\(1) & (\inst2|auxA\(6) & (!\inst2|auxA\(7)))) # (!\inst2|auxA\(1) & ((\inst2|auxA\(0) & (\inst2|auxA\(6))) # (!\inst2|auxA\(0) & ((\inst2|auxA\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(1),
	datac => \inst2|auxA\(7),
	datad => \inst2|auxA\(0),
	combout => \inst2|Mux6~132_combout\);

-- Location: LCCOMB_X36_Y37_N28
\inst2|Mux6~133\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~133_combout\ = (\inst2|auxA\(2) & (\inst2|auxA\(6))) # (!\inst2|auxA\(2) & ((\inst2|Mux6~132_combout\) # (\inst2|auxA\(6) $ (!\inst2|auxA\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(2),
	datac => \inst2|auxA\(5),
	datad => \inst2|Mux6~132_combout\,
	combout => \inst2|Mux6~133_combout\);

-- Location: LCCOMB_X36_Y37_N22
\inst2|Mux6~134\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~134_combout\ = (\inst2|auxA\(1) & (((!\inst2|auxA\(7))))) # (!\inst2|auxA\(1) & ((\inst2|auxA\(0) & ((!\inst2|auxA\(7)))) # (!\inst2|auxA\(0) & (\inst2|auxA\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(5),
	datab => \inst2|auxA\(1),
	datac => \inst2|auxA\(7),
	datad => \inst2|auxA\(0),
	combout => \inst2|Mux6~134_combout\);

-- Location: LCCOMB_X36_Y37_N12
\inst2|Mux6~135\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~135_combout\ = (\inst2|Mux6~134_combout\ & (((\inst2|Mux6~133_combout\)))) # (!\inst2|Mux6~134_combout\ & ((\inst2|auxA\(2) & (!\inst2|auxA\(7))) # (!\inst2|auxA\(2) & ((\inst2|Mux6~133_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux6~134_combout\,
	datab => \inst2|auxA\(2),
	datac => \inst2|auxA\(7),
	datad => \inst2|Mux6~133_combout\,
	combout => \inst2|Mux6~135_combout\);

-- Location: LCCOMB_X37_Y39_N20
\inst2|Mux7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~1_combout\ = (\inst2|auxA\(1) & ((\inst2|auxA\(7)) # ((\inst2|auxA\(6) & \inst2|auxA\(8))))) # (!\inst2|auxA\(1) & (((\inst2|auxA\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(6),
	datac => \inst2|auxA\(8),
	datad => \inst2|auxA\(1),
	combout => \inst2|Mux7~1_combout\);

-- Location: LCCOMB_X37_Y39_N22
\inst2|Mux7~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~2_combout\ = (\inst2|auxA\(8) & ((\inst2|auxA\(6)) # ((\inst2|auxA\(7) & !\inst2|auxA\(1))))) # (!\inst2|auxA\(8) & (\inst2|auxA\(7) $ (\inst2|auxA\(6) $ (\inst2|auxA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(6),
	datac => \inst2|auxA\(8),
	datad => \inst2|auxA\(1),
	combout => \inst2|Mux7~2_combout\);

-- Location: LCCOMB_X38_Y37_N2
\inst2|Mux7~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~33_combout\ = (\inst2|auxA\(6) & ((\inst2|auxA\(7)) # ((!\inst2|auxA\(5))))) # (!\inst2|auxA\(6) & (((\inst2|auxA\(0) & !\inst2|auxA\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(6),
	datac => \inst2|auxA\(0),
	datad => \inst2|auxA\(5),
	combout => \inst2|Mux7~33_combout\);

-- Location: LCCOMB_X38_Y37_N12
\inst2|Mux7~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~34_combout\ = (\inst2|auxA\(5) & (((!\inst2|auxA\(0) & \inst2|auxA\(7))) # (!\inst2|auxA\(6)))) # (!\inst2|auxA\(5) & (\inst2|auxA\(6) & ((\inst2|auxA\(7)) # (!\inst2|auxA\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(5),
	datab => \inst2|auxA\(0),
	datac => \inst2|auxA\(7),
	datad => \inst2|auxA\(6),
	combout => \inst2|Mux7~34_combout\);

-- Location: LCCOMB_X34_Y35_N22
\inst2|Mux7~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~36_combout\ = (\inst2|auxA\(7) & (\inst2|auxA\(1))) # (!\inst2|auxA\(7) & ((\inst2|auxA\(1) & ((\inst2|auxA\(6)))) # (!\inst2|auxA\(1) & (\inst2|auxA\(0) & !\inst2|auxA\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(1),
	datac => \inst2|auxA\(0),
	datad => \inst2|auxA\(6),
	combout => \inst2|Mux7~36_combout\);

-- Location: LCCOMB_X34_Y35_N20
\inst2|Mux7~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~37_combout\ = (\inst2|auxA\(7) & (((!\inst2|auxA\(0))) # (!\inst2|auxA\(1)))) # (!\inst2|auxA\(7) & (\inst2|auxA\(1) & ((!\inst2|auxA\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(1),
	datac => \inst2|auxA\(0),
	datad => \inst2|auxA\(6),
	combout => \inst2|Mux7~37_combout\);

-- Location: LCCOMB_X34_Y35_N26
\inst2|Mux7~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~38_combout\ = (\inst2|auxA\(9) & ((\inst2|Mux7~36_combout\ & (!\inst2|auxA\(6))) # (!\inst2|Mux7~36_combout\ & ((\inst2|Mux7~37_combout\))))) # (!\inst2|auxA\(9) & (\inst2|auxA\(6) & ((!\inst2|Mux7~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(9),
	datac => \inst2|Mux7~36_combout\,
	datad => \inst2|Mux7~37_combout\,
	combout => \inst2|Mux7~38_combout\);

-- Location: LCCOMB_X34_Y35_N24
\inst2|Mux7~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~39_combout\ = (\inst2|auxA\(6) & (!\inst2|Mux7~37_combout\ & (\inst2|auxA\(9) $ (\inst2|Mux7~36_combout\)))) # (!\inst2|auxA\(6) & (\inst2|Mux7~37_combout\ & ((!\inst2|Mux7~36_combout\) # (!\inst2|auxA\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(9),
	datac => \inst2|Mux7~36_combout\,
	datad => \inst2|Mux7~37_combout\,
	combout => \inst2|Mux7~39_combout\);

-- Location: LCCOMB_X34_Y35_N2
\inst2|Mux7~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~40_combout\ = (\inst2|auxA\(8) & ((\inst2|Mux7~39_combout\))) # (!\inst2|auxA\(8) & (!\inst2|Mux7~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datac => \inst2|Mux7~38_combout\,
	datad => \inst2|Mux7~39_combout\,
	combout => \inst2|Mux7~40_combout\);

-- Location: LCCOMB_X39_Y32_N8
\inst2|Mux7~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~55_combout\ = (\inst2|auxA\(1) & (((\inst2|auxA\(5))))) # (!\inst2|auxA\(1) & (\inst2|auxA\(8) & (\inst2|auxA\(0) $ (!\inst2|auxA\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|auxA\(0),
	datac => \inst2|auxA\(1),
	datad => \inst2|auxA\(5),
	combout => \inst2|Mux7~55_combout\);

-- Location: LCCOMB_X39_Y32_N2
\inst2|Mux7~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~56_combout\ = (\inst2|auxA\(8) & ((\inst2|auxA\(7) & ((\inst2|auxA\(1)) # (\inst2|auxA\(0)))) # (!\inst2|auxA\(7) & (!\inst2|auxA\(1))))) # (!\inst2|auxA\(8) & (\inst2|auxA\(1) & ((\inst2|auxA\(0)) # (!\inst2|auxA\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|auxA\(7),
	datac => \inst2|auxA\(1),
	datad => \inst2|auxA\(0),
	combout => \inst2|Mux7~56_combout\);

-- Location: LCCOMB_X39_Y32_N0
\inst2|Mux7~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~57_combout\ = (\inst2|auxA\(6) & (((\inst2|auxA\(7))))) # (!\inst2|auxA\(6) & (\inst2|auxA\(5) & ((\inst2|Mux7~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(5),
	datab => \inst2|auxA\(7),
	datac => \inst2|auxA\(6),
	datad => \inst2|Mux7~56_combout\,
	combout => \inst2|Mux7~57_combout\);

-- Location: LCCOMB_X38_Y32_N18
\inst2|Mux7~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~58_combout\ = (\inst2|auxA\(1) & ((\inst2|auxA\(8) & (!\inst2|auxA\(5))) # (!\inst2|auxA\(8) & ((\inst2|auxA\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(5),
	datab => \inst2|auxA\(0),
	datac => \inst2|auxA\(1),
	datad => \inst2|auxA\(8),
	combout => \inst2|Mux7~58_combout\);

-- Location: LCCOMB_X39_Y32_N10
\inst2|Mux7~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~59_combout\ = (\inst2|auxA\(6) & ((\inst2|Mux7~57_combout\ & (\inst2|Mux7~58_combout\)) # (!\inst2|Mux7~57_combout\ & ((!\inst2|Mux7~55_combout\))))) # (!\inst2|auxA\(6) & (((\inst2|Mux7~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|Mux7~58_combout\,
	datac => \inst2|Mux7~55_combout\,
	datad => \inst2|Mux7~57_combout\,
	combout => \inst2|Mux7~59_combout\);

-- Location: LCCOMB_X42_Y36_N12
\inst2|Mux7~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~76_combout\ = (\inst2|auxA\(4) & ((\inst2|auxA\(1) & ((!\inst2|auxA\(6)) # (!\inst2|auxA\(0)))) # (!\inst2|auxA\(1) & ((\inst2|auxA\(0)) # (\inst2|auxA\(6)))))) # (!\inst2|auxA\(4) & (((\inst2|auxA\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(1),
	datab => \inst2|auxA\(0),
	datac => \inst2|auxA\(4),
	datad => \inst2|auxA\(6),
	combout => \inst2|Mux7~76_combout\);

-- Location: LCCOMB_X41_Y37_N20
\inst2|Mux7~79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~79_combout\ = (!\inst2|auxA\(6) & (!\inst2|auxA\(4) & !\inst2|auxA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datac => \inst2|auxA\(4),
	datad => \inst2|auxA\(1),
	combout => \inst2|Mux7~79_combout\);

-- Location: LCCOMB_X43_Y36_N4
\inst2|Mux7~93\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~93_combout\ = (!\inst2|auxA\(5) & (!\inst2|auxA\(1) & (!\inst2|auxA\(6) & !\inst2|auxA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(5),
	datab => \inst2|auxA\(1),
	datac => \inst2|auxA\(6),
	datad => \inst2|auxA\(0),
	combout => \inst2|Mux7~93_combout\);

-- Location: LCCOMB_X39_Y35_N14
\inst2|Mux7~101\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~101_combout\ = (\inst2|auxA\(2) & ((\inst2|auxA\(8)) # ((\inst2|auxA\(0) & \inst2|auxA\(1))))) # (!\inst2|auxA\(2) & (\inst2|auxA\(8) & ((\inst2|auxA\(0)) # (\inst2|auxA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(2),
	datab => \inst2|auxA\(0),
	datac => \inst2|auxA\(1),
	datad => \inst2|auxA\(8),
	combout => \inst2|Mux7~101_combout\);

-- Location: LCCOMB_X39_Y35_N12
\inst2|Mux7~102\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~102_combout\ = (\inst2|auxA\(6) & (\inst2|auxA\(8))) # (!\inst2|auxA\(6) & (((\inst2|Mux7~101_combout\ & !\inst2|auxA\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(8),
	datac => \inst2|Mux7~101_combout\,
	datad => \inst2|auxA\(7),
	combout => \inst2|Mux7~102_combout\);

-- Location: LCCOMB_X39_Y35_N24
\inst2|Mux7~104\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~104_combout\ = (\inst2|auxA\(6) & ((\inst2|Mux7~102_combout\ & ((!\inst2|Mux7~103_combout\))) # (!\inst2|Mux7~102_combout\ & (\inst2|auxA\(7))))) # (!\inst2|auxA\(6) & (((\inst2|Mux7~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(7),
	datac => \inst2|Mux7~103_combout\,
	datad => \inst2|Mux7~102_combout\,
	combout => \inst2|Mux7~104_combout\);

-- Location: LCCOMB_X39_Y36_N12
\inst2|Mux7~105\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~105_combout\ = (\inst2|auxA\(5) & ((\inst2|auxA\(4)) # ((\inst2|Mux7~100_combout\)))) # (!\inst2|auxA\(5) & (!\inst2|auxA\(4) & ((\inst2|Mux7~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(5),
	datab => \inst2|auxA\(4),
	datac => \inst2|Mux7~100_combout\,
	datad => \inst2|Mux7~104_combout\,
	combout => \inst2|Mux7~105_combout\);

-- Location: LCCOMB_X38_Y33_N22
\inst2|Mux7~110\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~110_combout\ = (\inst2|auxA\(5) & (!\inst2|auxA\(8) & (\inst2|auxA\(6) $ (\inst2|auxA\(0))))) # (!\inst2|auxA\(5) & (\inst2|auxA\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(8),
	datac => \inst2|auxA\(5),
	datad => \inst2|auxA\(0),
	combout => \inst2|Mux7~110_combout\);

-- Location: LCCOMB_X39_Y38_N12
\inst2|Mux7~131\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~131_combout\ = (\inst2|auxA\(8)) # ((\inst2|auxA\(2)) # ((\inst2|auxA\(0) & \inst2|auxA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(0),
	datab => \inst2|auxA\(1),
	datac => \inst2|auxA\(8),
	datad => \inst2|auxA\(2),
	combout => \inst2|Mux7~131_combout\);

-- Location: LCCOMB_X39_Y38_N2
\inst2|Mux7~132\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~132_combout\ = (\inst2|auxA\(7) & (((\inst2|Mux6~54_combout\)) # (!\inst2|auxA\(8)))) # (!\inst2|auxA\(7) & (((\inst2|Mux7~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|auxA\(7),
	datac => \inst2|Mux6~54_combout\,
	datad => \inst2|Mux7~131_combout\,
	combout => \inst2|Mux7~132_combout\);

-- Location: LCCOMB_X39_Y38_N8
\inst2|Mux7~133\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~133_combout\ = (\inst2|auxA\(6) & (\inst2|auxA\(7) & (!\inst2|Mux6~40_combout\))) # (!\inst2|auxA\(6) & (((\inst2|Mux7~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(7),
	datac => \inst2|Mux6~40_combout\,
	datad => \inst2|Mux7~132_combout\,
	combout => \inst2|Mux7~133_combout\);

-- Location: LCCOMB_X39_Y38_N18
\inst2|Mux7~134\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~134_combout\ = (\inst2|auxA\(8) & ((\inst2|auxA\(0)) # ((\inst2|auxA\(1)) # (\inst2|auxA\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(0),
	datab => \inst2|auxA\(1),
	datac => \inst2|auxA\(8),
	datad => \inst2|auxA\(2),
	combout => \inst2|Mux7~134_combout\);

-- Location: LCCOMB_X39_Y38_N20
\inst2|Mux7~135\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~135_combout\ = (\inst2|auxA\(6) & (((!\inst2|auxA\(8))) # (!\inst2|auxA\(7)))) # (!\inst2|auxA\(6) & ((\inst2|auxA\(7) & ((\inst2|Mux7~134_combout\))) # (!\inst2|auxA\(7) & (\inst2|auxA\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(7),
	datac => \inst2|auxA\(8),
	datad => \inst2|Mux7~134_combout\,
	combout => \inst2|Mux7~135_combout\);

-- Location: LCCOMB_X39_Y38_N10
\inst2|Mux7~136\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~136_combout\ = (\inst2|auxA\(6) & ((\inst2|auxA\(8) & ((\inst2|Mux6~103_combout\))) # (!\inst2|auxA\(8) & (\inst2|auxA\(7))))) # (!\inst2|auxA\(6) & (((!\inst2|auxA\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|auxA\(7),
	datac => \inst2|Mux6~103_combout\,
	datad => \inst2|auxA\(6),
	combout => \inst2|Mux7~136_combout\);

-- Location: LCCOMB_X39_Y38_N28
\inst2|Mux7~137\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~137_combout\ = (\inst2|Mux7~136_combout\) # ((!\inst2|Mux6~54_combout\ & ((!\inst2|auxA\(8)) # (!\inst2|auxA\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux6~54_combout\,
	datab => \inst2|auxA\(6),
	datac => \inst2|auxA\(8),
	datad => \inst2|Mux7~136_combout\,
	combout => \inst2|Mux7~137_combout\);

-- Location: LCCOMB_X39_Y38_N6
\inst2|Mux7~138\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~138_combout\ = (\inst2|auxA\(5) & ((\inst2|Mux7~135_combout\) # ((\inst2|auxA\(4))))) # (!\inst2|auxA\(5) & (((!\inst2|auxA\(4) & \inst2|Mux7~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(5),
	datab => \inst2|Mux7~135_combout\,
	datac => \inst2|auxA\(4),
	datad => \inst2|Mux7~137_combout\,
	combout => \inst2|Mux7~138_combout\);

-- Location: LCCOMB_X39_Y38_N4
\inst2|Mux7~139\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~139_combout\ = (\inst2|auxA\(4) & ((\inst2|Mux7~138_combout\ & (\inst2|Mux7~190_combout\)) # (!\inst2|Mux7~138_combout\ & ((\inst2|Mux7~133_combout\))))) # (!\inst2|auxA\(4) & (((\inst2|Mux7~138_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux7~190_combout\,
	datab => \inst2|auxA\(4),
	datac => \inst2|Mux7~133_combout\,
	datad => \inst2|Mux7~138_combout\,
	combout => \inst2|Mux7~139_combout\);

-- Location: LCCOMB_X36_Y38_N16
\inst2|Mux7~142\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~142_combout\ = (\inst2|auxA\(1)) # ((\inst2|auxA\(6) & \inst2|auxA\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datac => \inst2|auxA\(1),
	datad => \inst2|auxA\(5),
	combout => \inst2|Mux7~142_combout\);

-- Location: LCCOMB_X36_Y38_N18
\inst2|Mux7~143\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~143_combout\ = (\inst2|auxA\(4) & (\inst2|auxA\(2))) # (!\inst2|auxA\(4) & ((\inst2|auxA\(2) & ((!\inst2|Mux7~142_combout\))) # (!\inst2|auxA\(2) & ((\inst2|auxA\(0)) # (\inst2|Mux7~142_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(4),
	datab => \inst2|auxA\(2),
	datac => \inst2|auxA\(0),
	datad => \inst2|Mux7~142_combout\,
	combout => \inst2|Mux7~143_combout\);

-- Location: LCCOMB_X36_Y38_N0
\inst2|Mux7~144\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~144_combout\ = (\inst2|auxA\(4) & (!\inst2|auxA\(1) & ((!\inst2|auxA\(5)) # (!\inst2|auxA\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(5),
	datac => \inst2|auxA\(4),
	datad => \inst2|auxA\(1),
	combout => \inst2|Mux7~144_combout\);

-- Location: LCCOMB_X36_Y38_N26
\inst2|Mux7~145\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~145_combout\ = (\inst2|Mux7~144_combout\ & ((\inst2|auxA\(6) & (\inst2|auxA\(0) & \inst2|Mux7~143_combout\)) # (!\inst2|auxA\(6) & (!\inst2|auxA\(0) & !\inst2|Mux7~143_combout\)))) # (!\inst2|Mux7~144_combout\ & (((\inst2|Mux7~143_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|Mux7~144_combout\,
	datac => \inst2|auxA\(0),
	datad => \inst2|Mux7~143_combout\,
	combout => \inst2|Mux7~145_combout\);

-- Location: LCCOMB_X39_Y34_N26
\inst2|Mux7~149\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~149_combout\ = \inst2|auxA\(6) $ (((\inst2|auxA\(2) & ((\inst2|auxA\(1)) # (\inst2|auxA\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(2),
	datab => \inst2|auxA\(1),
	datac => \inst2|auxA\(6),
	datad => \inst2|auxA\(0),
	combout => \inst2|Mux7~149_combout\);

-- Location: LCCOMB_X42_Y35_N4
\inst2|Mux7~172\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~172_combout\ = (\inst2|auxA\(6) & ((\inst2|auxA\(1)) # ((\inst2|auxA\(0) & \inst2|auxA\(5))))) # (!\inst2|auxA\(6) & (\inst2|auxA\(1) & (\inst2|auxA\(0) & \inst2|auxA\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(1),
	datac => \inst2|auxA\(0),
	datad => \inst2|auxA\(5),
	combout => \inst2|Mux7~172_combout\);

-- Location: LCCOMB_X42_Y35_N6
\inst2|Mux7~173\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~173_combout\ = (\inst2|auxA\(1) & (!\inst2|auxA\(4) & ((\inst2|auxA\(6)) # (!\inst2|auxA\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(1),
	datac => \inst2|auxA\(5),
	datad => \inst2|auxA\(4),
	combout => \inst2|Mux7~173_combout\);

-- Location: LCCOMB_X42_Y35_N20
\inst2|Mux7~174\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~174_combout\ = (\inst2|auxA\(2) & (((!\inst2|Mux7~173_combout\) # (!\inst2|auxA\(5))) # (!\inst2|auxA\(0)))) # (!\inst2|auxA\(2) & (\inst2|Mux7~173_combout\ & ((\inst2|auxA\(0)) # (\inst2|auxA\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(0),
	datab => \inst2|auxA\(2),
	datac => \inst2|auxA\(5),
	datad => \inst2|Mux7~173_combout\,
	combout => \inst2|Mux7~174_combout\);

-- Location: LCCOMB_X42_Y35_N26
\inst2|Mux7~175\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~175_combout\ = (\inst2|auxA\(6) & (\inst2|auxA\(1) & ((\inst2|auxA\(0)) # (\inst2|auxA\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(1),
	datac => \inst2|auxA\(0),
	datad => \inst2|auxA\(5),
	combout => \inst2|Mux7~175_combout\);

-- Location: LCCOMB_X42_Y35_N0
\inst2|Mux7~176\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~176_combout\ = (\inst2|auxA\(4) & ((\inst2|Mux7~174_combout\ & ((\inst2|Mux7~175_combout\))) # (!\inst2|Mux7~174_combout\ & (!\inst2|Mux7~172_combout\)))) # (!\inst2|auxA\(4) & (((\inst2|Mux7~174_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(4),
	datab => \inst2|Mux7~172_combout\,
	datac => \inst2|Mux7~175_combout\,
	datad => \inst2|Mux7~174_combout\,
	combout => \inst2|Mux7~176_combout\);

-- Location: LCCOMB_X39_Y37_N20
\inst2|Mux7~177\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~177_combout\ = (\inst2|auxA\(4) & (((\inst2|auxA\(6) & \inst2|auxA\(5))))) # (!\inst2|auxA\(4) & (\inst2|auxA\(0) & (\inst2|auxA\(6) $ (!\inst2|auxA\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(0),
	datab => \inst2|auxA\(6),
	datac => \inst2|auxA\(4),
	datad => \inst2|auxA\(5),
	combout => \inst2|Mux7~177_combout\);

-- Location: LCCOMB_X38_Y38_N10
\inst2|Mux7~178\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~178_combout\ = (\inst2|auxA\(0) & (\inst2|auxA\(5) & ((\inst2|auxA\(4)) # (!\inst2|auxA\(6))))) # (!\inst2|auxA\(0) & (\inst2|auxA\(6) $ (((\inst2|auxA\(5)) # (\inst2|auxA\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110100011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(0),
	datab => \inst2|auxA\(5),
	datac => \inst2|auxA\(6),
	datad => \inst2|auxA\(4),
	combout => \inst2|Mux7~178_combout\);

-- Location: LCCOMB_X39_Y36_N28
\inst2|Mux7~179\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~179_combout\ = (\inst2|auxA\(1) & ((\inst2|Mux7~178_combout\ & ((\inst2|Mux7~177_combout\))) # (!\inst2|Mux7~178_combout\ & (\inst2|auxA\(2))))) # (!\inst2|auxA\(1) & (\inst2|auxA\(2) & ((\inst2|Mux7~177_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(2),
	datab => \inst2|Mux7~178_combout\,
	datac => \inst2|auxA\(1),
	datad => \inst2|Mux7~177_combout\,
	combout => \inst2|Mux7~179_combout\);

-- Location: LCCOMB_X39_Y36_N26
\inst2|Mux7~180\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~180_combout\ = (\inst2|auxA\(7) & (\inst2|auxA\(8))) # (!\inst2|auxA\(7) & ((\inst2|auxA\(8) & (\inst2|Mux7~176_combout\)) # (!\inst2|auxA\(8) & ((\inst2|Mux7~179_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(8),
	datac => \inst2|Mux7~176_combout\,
	datad => \inst2|Mux7~179_combout\,
	combout => \inst2|Mux7~180_combout\);

-- Location: FF_X51_Y21_N25
\inst1|s_clk_out_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|s_clk_out_internal~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_clk_out_internal~q\);

-- Location: FF_X51_Y21_N21
\inst3|s_clk_out_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst3|s_clk_out_internal~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_clk_out_internal~q\);

-- Location: FF_X51_Y21_N27
\inst1|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|s_counter~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_counter\(8));

-- Location: FF_X51_Y21_N17
\inst1|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Add0~14_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_counter\(7));

-- Location: FF_X51_Y21_N15
\inst1|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Add0~12_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_counter\(6));

-- Location: FF_X51_Y21_N13
\inst1|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Add0~10_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_counter\(5));

-- Location: LCCOMB_X51_Y21_N28
\inst1|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Equal0~0_combout\ = (\inst1|s_counter\(8) & (!\inst1|s_counter\(7) & (!\inst1|s_counter\(6) & !\inst1|s_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_counter\(8),
	datab => \inst1|s_counter\(7),
	datac => \inst1|s_counter\(6),
	datad => \inst1|s_counter\(5),
	combout => \inst1|Equal0~0_combout\);

-- Location: FF_X51_Y21_N3
\inst1|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Add0~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_counter\(0));

-- Location: FF_X51_Y21_N9
\inst1|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Add0~6_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_counter\(3));

-- Location: FF_X51_Y21_N7
\inst1|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Add0~4_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_counter\(2));

-- Location: FF_X51_Y21_N5
\inst1|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Add0~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_counter\(1));

-- Location: FF_X51_Y21_N1
\inst1|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|s_counter~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_counter\(4));

-- Location: LCCOMB_X51_Y21_N30
\inst1|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Equal0~1_combout\ = (\inst1|s_counter\(2) & (\inst1|s_counter\(3) & (\inst1|s_counter\(1) & !\inst1|s_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_counter\(2),
	datab => \inst1|s_counter\(3),
	datac => \inst1|s_counter\(1),
	datad => \inst1|s_counter\(4),
	combout => \inst1|Equal0~1_combout\);

-- Location: LCCOMB_X51_Y21_N22
\inst1|Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|Equal0~2_combout\ = (\inst1|s_counter\(0) & (\inst1|Equal0~1_combout\ & \inst1|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_counter\(0),
	datac => \inst1|Equal0~1_combout\,
	datad => \inst1|Equal0~0_combout\,
	combout => \inst1|Equal0~2_combout\);

-- Location: LCCOMB_X51_Y21_N26
\inst1|s_counter~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|s_counter~0_combout\ = (\inst1|Add0~16_combout\ & (((!\inst1|s_counter\(0)) # (!\inst1|Equal0~0_combout\)) # (!\inst1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~1_combout\,
	datab => \inst1|Equal0~0_combout\,
	datac => \inst1|s_counter\(0),
	datad => \inst1|Add0~16_combout\,
	combout => \inst1|s_counter~0_combout\);

-- Location: LCCOMB_X51_Y21_N0
\inst1|s_counter~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|s_counter~1_combout\ = (\inst1|Add0~8_combout\ & (((!\inst1|s_counter\(0)) # (!\inst1|Equal0~0_combout\)) # (!\inst1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~1_combout\,
	datab => \inst1|Equal0~0_combout\,
	datac => \inst1|s_counter\(0),
	datad => \inst1|Add0~8_combout\,
	combout => \inst1|s_counter~1_combout\);

-- Location: LCCOMB_X37_Y34_N6
\inst2|Mux4~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~62_combout\ = (!\inst2|auxA\(3) & (!\inst2|auxA\(4) & (!\inst2|auxA\(7) & \inst2|Mux4~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(3),
	datab => \inst2|auxA\(4),
	datac => \inst2|auxA\(7),
	datad => \inst2|Mux4~20_combout\,
	combout => \inst2|Mux4~62_combout\);

-- Location: LCCOMB_X39_Y35_N6
\inst2|Mux6~160\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~160_combout\ = (\inst2|auxA\(7) & ((\inst2|Mux6~29_combout\) # ((\inst2|auxA\(8) & !\inst2|Mux6~30_combout\)))) # (!\inst2|auxA\(7) & (((\inst2|Mux6~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(8),
	datac => \inst2|Mux6~29_combout\,
	datad => \inst2|Mux6~30_combout\,
	combout => \inst2|Mux6~160_combout\);

-- Location: LCCOMB_X39_Y38_N0
\inst2|Mux7~189\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~189_combout\ = (\inst2|auxA\(1) & (\inst2|auxA\(7) $ (((\inst2|auxA\(8)) # (!\inst2|auxA\(2)))))) # (!\inst2|auxA\(1) & ((\inst2|auxA\(8) $ (\inst2|auxA\(2))) # (!\inst2|auxA\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|auxA\(7),
	datac => \inst2|auxA\(1),
	datad => \inst2|auxA\(2),
	combout => \inst2|Mux7~189_combout\);

-- Location: LCCOMB_X39_Y38_N22
\inst2|Mux7~190\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~190_combout\ = (\inst2|auxA\(6) & (\inst2|auxA\(7) & ((\inst2|Mux7~189_combout\) # (!\inst2|auxA\(8))))) # (!\inst2|auxA\(6) & (\inst2|Mux7~189_combout\ & ((!\inst2|auxA\(8)) # (!\inst2|auxA\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(7),
	datac => \inst2|auxA\(8),
	datad => \inst2|Mux7~189_combout\,
	combout => \inst2|Mux7~190_combout\);

-- Location: LCCOMB_X38_Y37_N8
\inst2|Mux7~197\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~197_combout\ = (\inst2|auxA\(7) & ((\inst2|auxA\(9) & (!\inst2|auxA\(8) & !\inst2|Mux7~33_combout\)) # (!\inst2|auxA\(9) & (\inst2|auxA\(8))))) # (!\inst2|auxA\(7) & (((\inst2|auxA\(9) & !\inst2|Mux7~33_combout\)) # (!\inst2|auxA\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010101101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(9),
	datac => \inst2|auxA\(8),
	datad => \inst2|Mux7~33_combout\,
	combout => \inst2|Mux7~197_combout\);

-- Location: LCCOMB_X38_Y37_N10
\inst2|Mux7~198\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~198_combout\ = (\inst2|Mux7~34_combout\ & (!\inst2|Mux7~33_combout\ & (\inst2|auxA\(8) $ (!\inst2|Mux7~197_combout\)))) # (!\inst2|Mux7~34_combout\ & (((\inst2|Mux7~197_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux7~34_combout\,
	datab => \inst2|auxA\(8),
	datac => \inst2|Mux7~197_combout\,
	datad => \inst2|Mux7~33_combout\,
	combout => \inst2|Mux7~198_combout\);

-- Location: LCCOMB_X37_Y39_N10
\inst2|Mux7~201\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~201_combout\ = (\inst2|auxA\(9) & (!\inst2|Mux7~1_combout\ & ((!\inst2|Mux7~2_combout\) # (!\inst2|auxA\(0))))) # (!\inst2|auxA\(9) & (\inst2|Mux7~1_combout\ $ (((!\inst2|auxA\(0) & !\inst2|Mux7~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001001001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(0),
	datab => \inst2|auxA\(9),
	datac => \inst2|Mux7~2_combout\,
	datad => \inst2|Mux7~1_combout\,
	combout => \inst2|Mux7~201_combout\);

-- Location: LCCOMB_X37_Y39_N12
\inst2|Mux7~202\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~202_combout\ = (\inst2|auxA\(8) & ((\inst2|Mux7~2_combout\ & ((!\inst2|Mux7~201_combout\))) # (!\inst2|Mux7~2_combout\ & (\inst2|Mux7~1_combout\)))) # (!\inst2|auxA\(8) & (((\inst2|Mux7~201_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|Mux7~1_combout\,
	datac => \inst2|Mux7~2_combout\,
	datad => \inst2|Mux7~201_combout\,
	combout => \inst2|Mux7~202_combout\);

-- Location: LCCOMB_X34_Y36_N16
\inst2|Mux6~166\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~166_combout\ = (\inst2|auxA\(8) & (((!\inst2|auxA\(5))))) # (!\inst2|auxA\(8) & ((\inst2|auxA\(5)) # ((\inst2|auxA\(1) & \inst2|auxA\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(1),
	datab => \inst2|auxA\(8),
	datac => \inst2|auxA\(0),
	datad => \inst2|auxA\(5),
	combout => \inst2|Mux6~166_combout\);

-- Location: LCCOMB_X34_Y36_N6
\inst2|Mux6~167\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~167_combout\ = (\inst2|auxA\(6) & (((\inst2|auxA\(8))))) # (!\inst2|auxA\(6) & ((\inst2|auxA\(7) & (\inst2|auxA\(8) $ (\inst2|Mux6~166_combout\))) # (!\inst2|auxA\(7) & (\inst2|auxA\(8) & \inst2|Mux6~166_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(7),
	datac => \inst2|auxA\(8),
	datad => \inst2|Mux6~166_combout\,
	combout => \inst2|Mux6~167_combout\);

-- Location: LCCOMB_X34_Y35_N4
\inst2|Mux6~170\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~170_combout\ = (\inst2|auxA\(8) & (\inst2|auxA\(6) & ((\inst2|auxA\(5)) # (\inst2|Mux4~14_combout\)))) # (!\inst2|auxA\(8) & (((!\inst2|auxA\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(5),
	datac => \inst2|Mux4~14_combout\,
	datad => \inst2|auxA\(8),
	combout => \inst2|Mux6~170_combout\);

-- Location: LCCOMB_X34_Y35_N14
\inst2|Mux6~171\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~171_combout\ = (\inst2|auxA\(5) & (\inst2|Mux6~170_combout\ $ (\inst2|Mux6~74_combout\))) # (!\inst2|auxA\(5) & (\inst2|Mux6~170_combout\ & \inst2|Mux6~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|auxA\(5),
	datac => \inst2|Mux6~170_combout\,
	datad => \inst2|Mux6~74_combout\,
	combout => \inst2|Mux6~171_combout\);

-- Location: LCCOMB_X34_Y37_N18
\inst2|Mux6~172\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~172_combout\ = (\inst2|auxA\(8) & ((\inst2|auxA\(2) & (!\inst2|auxA\(7))) # (!\inst2|auxA\(2) & (\inst2|auxA\(7) & !\inst2|Mux6~27_combout\)))) # (!\inst2|auxA\(8) & (\inst2|auxA\(2) & ((\inst2|Mux6~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|auxA\(2),
	datac => \inst2|auxA\(7),
	datad => \inst2|Mux6~27_combout\,
	combout => \inst2|Mux6~172_combout\);

-- Location: LCCOMB_X34_Y37_N8
\inst2|Mux6~173\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~173_combout\ = (\inst2|auxA\(8) & ((\inst2|auxA\(9) & ((\inst2|Mux6~172_combout\))) # (!\inst2|auxA\(9) & (\inst2|auxA\(7))))) # (!\inst2|auxA\(8) & ((\inst2|Mux6~172_combout\) # (\inst2|auxA\(9) $ (!\inst2|auxA\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|auxA\(9),
	datac => \inst2|auxA\(7),
	datad => \inst2|Mux6~172_combout\,
	combout => \inst2|Mux6~173_combout\);

-- Location: LCCOMB_X38_Y35_N28
\inst2|Mux6~174\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~174_combout\ = (\inst2|auxA\(1) & (!\inst2|auxA\(7) & (\inst2|auxA\(9) $ (\inst2|auxA\(8))))) # (!\inst2|auxA\(1) & ((\inst2|auxA\(8) & ((!\inst2|auxA\(9)))) # (!\inst2|auxA\(8) & (!\inst2|auxA\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(1),
	datab => \inst2|auxA\(7),
	datac => \inst2|auxA\(9),
	datad => \inst2|auxA\(8),
	combout => \inst2|Mux6~174_combout\);

-- Location: LCCOMB_X38_Y35_N2
\inst2|Mux6~175\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~175_combout\ = (\inst2|auxA\(3) & (\inst2|auxA\(9))) # (!\inst2|auxA\(3) & ((\inst2|Mux6~174_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(3),
	datac => \inst2|auxA\(9),
	datad => \inst2|Mux6~174_combout\,
	combout => \inst2|Mux6~175_combout\);

-- Location: LCCOMB_X51_Y21_N20
\inst1|s_clk_out_internal~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|s_clk_out_internal~0_combout\ = !\inst1|s_clk_out_internal~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_clk_out_internal~q\,
	combout => \inst1|s_clk_out_internal~0_combout\);

-- Location: LCCOMB_X51_Y21_N24
\inst3|s_clk_out_internal~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|s_clk_out_internal~0_combout\ = !\inst3|s_clk_out_internal~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_clk_out_internal~q\,
	combout => \inst3|s_clk_out_internal~0_combout\);

-- Location: CLKCTRL_G7
\inst1|s_clk_out_internal~clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|s_clk_out_internal~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|s_clk_out_internal~clkctrl_outclk\);

-- Location: CLKCTRL_G8
\inst3|s_clk_out_internal~clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3|s_clk_out_internal~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3|s_clk_out_internal~clkctrl_outclk\);

-- Location: IOOBUF_X36_Y0_N9
\pwm0~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|pwm_output0~q\,
	devoe => ww_devoe,
	o => \pwm0~output_o\);

-- Location: IOOBUF_X38_Y41_N9
\pwm1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|pwm_output1~q\,
	devoe => ww_devoe,
	o => \pwm1~output_o\);

-- Location: IOOBUF_X43_Y41_N9
\pwm2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|pwm_output2~q\,
	devoe => ww_devoe,
	o => \pwm2~output_o\);

-- Location: IOOBUF_X25_Y41_N2
\pwm3~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|pwm_output3~q\,
	devoe => ww_devoe,
	o => \pwm3~output_o\);

-- Location: IOOBUF_X52_Y32_N23
\sine[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \sine[7]~output_o\);

-- Location: IOOBUF_X34_Y41_N2
\sine[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux1~11_combout\,
	devoe => ww_devoe,
	o => \sine[6]~output_o\);

-- Location: IOOBUF_X36_Y41_N9
\sine[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux2~21_combout\,
	devoe => ww_devoe,
	o => \sine[5]~output_o\);

-- Location: IOOBUF_X52_Y32_N16
\sine[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux3~35_combout\,
	devoe => ww_devoe,
	o => \sine[4]~output_o\);

-- Location: IOOBUF_X36_Y41_N2
\sine[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux4~59_combout\,
	devoe => ww_devoe,
	o => \sine[3]~output_o\);

-- Location: IOOBUF_X34_Y41_N9
\sine[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux5~88_combout\,
	devoe => ww_devoe,
	o => \sine[2]~output_o\);

-- Location: IOOBUF_X38_Y41_N2
\sine[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux6~165_combout\,
	devoe => ww_devoe,
	o => \sine[1]~output_o\);

-- Location: IOOBUF_X31_Y41_N2
\sine[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux7~188_combout\,
	devoe => ww_devoe,
	o => \sine[0]~output_o\);

-- Location: IOOBUF_X41_Y41_N9
\triang0[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|s_triangular_counter\(7),
	devoe => ww_devoe,
	o => \triang0[7]~output_o\);

-- Location: IOOBUF_X48_Y41_N2
\triang0[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|s_triangular_counter\(6),
	devoe => ww_devoe,
	o => \triang0[6]~output_o\);

-- Location: IOOBUF_X52_Y10_N2
\triang0[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|s_triangular_counter\(5),
	devoe => ww_devoe,
	o => \triang0[5]~output_o\);

-- Location: IOOBUF_X52_Y30_N9
\triang0[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|s_triangular_counter\(4),
	devoe => ww_devoe,
	o => \triang0[4]~output_o\);

-- Location: IOOBUF_X46_Y41_N2
\triang0[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|s_triangular_counter\(3),
	devoe => ww_devoe,
	o => \triang0[3]~output_o\);

-- Location: IOOBUF_X43_Y0_N2
\triang0[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|s_triangular_counter\(2),
	devoe => ww_devoe,
	o => \triang0[2]~output_o\);

-- Location: IOOBUF_X31_Y41_N16
\triang0[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|s_triangular_counter\(1),
	devoe => ww_devoe,
	o => \triang0[1]~output_o\);

-- Location: IOOBUF_X52_Y28_N9
\triang0[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|s_triangular_counter\(0),
	devoe => ww_devoe,
	o => \triang0[0]~output_o\);

-- Location: IOOBUF_X29_Y41_N9
\triang1[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Add2~0_combout\,
	devoe => ww_devoe,
	o => \triang1[7]~output_o\);

-- Location: IOOBUF_X50_Y41_N9
\triang1[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ALT_INV_s_triangular_counter\(6),
	devoe => ww_devoe,
	o => \triang1[6]~output_o\);

-- Location: IOOBUF_X46_Y0_N23
\triang1[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|s_triangular_counter\(5),
	devoe => ww_devoe,
	o => \triang1[5]~output_o\);

-- Location: IOOBUF_X52_Y30_N2
\triang1[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|s_triangular_counter\(4),
	devoe => ww_devoe,
	o => \triang1[4]~output_o\);

-- Location: IOOBUF_X46_Y41_N9
\triang1[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|s_triangular_counter\(3),
	devoe => ww_devoe,
	o => \triang1[3]~output_o\);

-- Location: IOOBUF_X41_Y0_N9
\triang1[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|s_triangular_counter\(2),
	devoe => ww_devoe,
	o => \triang1[2]~output_o\);

-- Location: IOOBUF_X31_Y41_N23
\triang1[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|s_triangular_counter\(1),
	devoe => ww_devoe,
	o => \triang1[1]~output_o\);

-- Location: IOOBUF_X52_Y19_N9
\triang1[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|s_triangular_counter\(0),
	devoe => ww_devoe,
	o => \triang1[0]~output_o\);

-- Location: IOOBUF_X41_Y41_N23
\triang2[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ALT_INV_s_triangular_counter\(7),
	devoe => ww_devoe,
	o => \triang2[7]~output_o\);

-- Location: IOOBUF_X46_Y41_N16
\triang2[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|s_triangular_counter\(6),
	devoe => ww_devoe,
	o => \triang2[6]~output_o\);

-- Location: IOOBUF_X52_Y18_N2
\triang2[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|s_triangular_counter\(5),
	devoe => ww_devoe,
	o => \triang2[5]~output_o\);

-- Location: IOOBUF_X52_Y31_N2
\triang2[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|s_triangular_counter\(4),
	devoe => ww_devoe,
	o => \triang2[4]~output_o\);

-- Location: IOOBUF_X46_Y41_N23
\triang2[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|s_triangular_counter\(3),
	devoe => ww_devoe,
	o => \triang2[3]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\triang2[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|s_triangular_counter\(2),
	devoe => ww_devoe,
	o => \triang2[2]~output_o\);

-- Location: IOOBUF_X41_Y41_N2
\triang2[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|s_triangular_counter\(1),
	devoe => ww_devoe,
	o => \triang2[1]~output_o\);

-- Location: IOOBUF_X52_Y16_N2
\triang2[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|s_triangular_counter\(0),
	devoe => ww_devoe,
	o => \triang2[0]~output_o\);

-- Location: IOOBUF_X29_Y41_N2
\triang3[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ALT_INV_Add2~0_combout\,
	devoe => ww_devoe,
	o => \triang3[7]~output_o\);

-- Location: IOOBUF_X41_Y41_N16
\triang3[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ALT_INV_s_triangular_counter\(6),
	devoe => ww_devoe,
	o => \triang3[6]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\triang3[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|s_triangular_counter\(5),
	devoe => ww_devoe,
	o => \triang3[5]~output_o\);

-- Location: IOOBUF_X52_Y32_N9
\triang3[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|s_triangular_counter\(4),
	devoe => ww_devoe,
	o => \triang3[4]~output_o\);

-- Location: IOOBUF_X43_Y41_N2
\triang3[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|s_triangular_counter\(3),
	devoe => ww_devoe,
	o => \triang3[3]~output_o\);

-- Location: IOOBUF_X41_Y0_N2
\triang3[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|s_triangular_counter\(2),
	devoe => ww_devoe,
	o => \triang3[2]~output_o\);

-- Location: IOOBUF_X31_Y41_N9
\triang3[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|s_triangular_counter\(1),
	devoe => ww_devoe,
	o => \triang3[1]~output_o\);

-- Location: IOOBUF_X52_Y15_N9
\triang3[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|s_triangular_counter\(0),
	devoe => ww_devoe,
	o => \triang3[0]~output_o\);

-- Location: IOIBUF_X27_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X38_Y35_N4
\inst2|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add0~0_combout\ = \inst2|auxA\(0) $ (VCC)
-- \inst2|Add0~1\ = CARRY(\inst2|auxA\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|auxA\(0),
	datad => VCC,
	combout => \inst2|Add0~0_combout\,
	cout => \inst2|Add0~1\);

-- Location: IOIBUF_X27_Y0_N22
\rst~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G19
\rst~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: FF_X38_Y35_N5
\inst2|auxA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|s_clk_out_internal~clkctrl_outclk\,
	d => \inst2|Add0~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|auxA\(0));

-- Location: LCCOMB_X38_Y35_N6
\inst2|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add0~2_combout\ = (\inst2|auxA\(1) & (!\inst2|Add0~1\)) # (!\inst2|auxA\(1) & ((\inst2|Add0~1\) # (GND)))
-- \inst2|Add0~3\ = CARRY((!\inst2|Add0~1\) # (!\inst2|auxA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(1),
	datad => VCC,
	cin => \inst2|Add0~1\,
	combout => \inst2|Add0~2_combout\,
	cout => \inst2|Add0~3\);

-- Location: LCCOMB_X38_Y35_N8
\inst2|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add0~4_combout\ = (\inst2|auxA\(2) & (\inst2|Add0~3\ $ (GND))) # (!\inst2|auxA\(2) & (!\inst2|Add0~3\ & VCC))
-- \inst2|Add0~5\ = CARRY((\inst2|auxA\(2) & !\inst2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|auxA\(2),
	datad => VCC,
	cin => \inst2|Add0~3\,
	combout => \inst2|Add0~4_combout\,
	cout => \inst2|Add0~5\);

-- Location: FF_X38_Y35_N9
\inst2|auxA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|s_clk_out_internal~clkctrl_outclk\,
	d => \inst2|Add0~4_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|auxA\(2));

-- Location: LCCOMB_X38_Y35_N10
\inst2|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add0~6_combout\ = (\inst2|auxA\(3) & (!\inst2|Add0~5\)) # (!\inst2|auxA\(3) & ((\inst2|Add0~5\) # (GND)))
-- \inst2|Add0~7\ = CARRY((!\inst2|Add0~5\) # (!\inst2|auxA\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(3),
	datad => VCC,
	cin => \inst2|Add0~5\,
	combout => \inst2|Add0~6_combout\,
	cout => \inst2|Add0~7\);

-- Location: LCCOMB_X38_Y35_N12
\inst2|Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add0~8_combout\ = (\inst2|auxA\(4) & (\inst2|Add0~7\ $ (GND))) # (!\inst2|auxA\(4) & (!\inst2|Add0~7\ & VCC))
-- \inst2|Add0~9\ = CARRY((\inst2|auxA\(4) & !\inst2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(4),
	datad => VCC,
	cin => \inst2|Add0~7\,
	combout => \inst2|Add0~8_combout\,
	cout => \inst2|Add0~9\);

-- Location: LCCOMB_X38_Y35_N14
\inst2|Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add0~10_combout\ = (\inst2|auxA\(5) & (!\inst2|Add0~9\)) # (!\inst2|auxA\(5) & ((\inst2|Add0~9\) # (GND)))
-- \inst2|Add0~11\ = CARRY((!\inst2|Add0~9\) # (!\inst2|auxA\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|auxA\(5),
	datad => VCC,
	cin => \inst2|Add0~9\,
	combout => \inst2|Add0~10_combout\,
	cout => \inst2|Add0~11\);

-- Location: FF_X38_Y35_N15
\inst2|auxA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|s_clk_out_internal~clkctrl_outclk\,
	d => \inst2|Add0~10_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|auxA\(5));

-- Location: LCCOMB_X38_Y35_N16
\inst2|Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add0~12_combout\ = (\inst2|auxA\(6) & (\inst2|Add0~11\ $ (GND))) # (!\inst2|auxA\(6) & (!\inst2|Add0~11\ & VCC))
-- \inst2|Add0~13\ = CARRY((\inst2|auxA\(6) & !\inst2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|auxA\(6),
	datad => VCC,
	cin => \inst2|Add0~11\,
	combout => \inst2|Add0~12_combout\,
	cout => \inst2|Add0~13\);

-- Location: FF_X38_Y35_N17
\inst2|auxA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|s_clk_out_internal~clkctrl_outclk\,
	d => \inst2|Add0~12_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|auxA\(6));

-- Location: LCCOMB_X38_Y35_N18
\inst2|Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add0~14_combout\ = (\inst2|auxA\(7) & (!\inst2|Add0~13\)) # (!\inst2|auxA\(7) & ((\inst2|Add0~13\) # (GND)))
-- \inst2|Add0~15\ = CARRY((!\inst2|Add0~13\) # (!\inst2|auxA\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|auxA\(7),
	datad => VCC,
	cin => \inst2|Add0~13\,
	combout => \inst2|Add0~14_combout\,
	cout => \inst2|Add0~15\);

-- Location: FF_X38_Y35_N19
\inst2|auxA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|s_clk_out_internal~clkctrl_outclk\,
	d => \inst2|Add0~14_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|auxA\(7));

-- Location: LCCOMB_X38_Y35_N20
\inst2|Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add0~16_combout\ = (\inst2|auxA\(8) & (\inst2|Add0~15\ $ (GND))) # (!\inst2|auxA\(8) & (!\inst2|Add0~15\ & VCC))
-- \inst2|Add0~17\ = CARRY((\inst2|auxA\(8) & !\inst2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|auxA\(8),
	datad => VCC,
	cin => \inst2|Add0~15\,
	combout => \inst2|Add0~16_combout\,
	cout => \inst2|Add0~17\);

-- Location: FF_X38_Y35_N21
\inst2|auxA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|s_clk_out_internal~clkctrl_outclk\,
	d => \inst2|Add0~16_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|auxA\(8));

-- Location: LCCOMB_X37_Y35_N24
\inst2|Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~0_combout\ = (!\inst2|auxA\(6) & !\inst2|auxA\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|auxA\(6),
	datad => \inst2|auxA\(5),
	combout => \inst2|Mux7~0_combout\);

-- Location: LCCOMB_X35_Y37_N10
\inst2|Mux1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux1~12_combout\ = (\inst2|Mux5~5_combout\ & (!\inst2|auxA\(8) & (\inst2|Mux7~0_combout\ & !\inst2|auxA\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux5~5_combout\,
	datab => \inst2|auxA\(8),
	datac => \inst2|Mux7~0_combout\,
	datad => \inst2|auxA\(7),
	combout => \inst2|Mux1~12_combout\);

-- Location: LCCOMB_X38_Y35_N22
\inst2|Add0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add0~18_combout\ = (\inst2|auxA\(9) & (!\inst2|Add0~17\)) # (!\inst2|auxA\(9) & ((\inst2|Add0~17\) # (GND)))
-- \inst2|Add0~19\ = CARRY((!\inst2|Add0~17\) # (!\inst2|auxA\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(9),
	datad => VCC,
	cin => \inst2|Add0~17\,
	combout => \inst2|Add0~18_combout\,
	cout => \inst2|Add0~19\);

-- Location: LCCOMB_X38_Y35_N24
\inst2|Add0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add0~20_combout\ = (\inst2|auxA\(10) & (\inst2|Add0~19\ $ (GND))) # (!\inst2|auxA\(10) & (!\inst2|Add0~19\ & VCC))
-- \inst2|Add0~21\ = CARRY((\inst2|auxA\(10) & !\inst2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|auxA\(10),
	datad => VCC,
	cin => \inst2|Add0~19\,
	combout => \inst2|Add0~20_combout\,
	cout => \inst2|Add0~21\);

-- Location: FF_X38_Y35_N11
\inst2|auxA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|s_clk_out_internal~clkctrl_outclk\,
	d => \inst2|Add0~6_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|auxA\(3));

-- Location: FF_X38_Y35_N13
\inst2|auxA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|s_clk_out_internal~clkctrl_outclk\,
	d => \inst2|Add0~8_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|auxA\(4));

-- Location: LCCOMB_X38_Y38_N12
\inst2|Equal0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Equal0~4_combout\ = (\inst2|auxA\(6) & (\inst2|auxA\(3) & (\inst2|auxA\(5) & \inst2|auxA\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(3),
	datac => \inst2|auxA\(5),
	datad => \inst2|auxA\(4),
	combout => \inst2|Equal0~4_combout\);

-- Location: LCCOMB_X38_Y35_N26
\inst2|Add0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add0~22_combout\ = \inst2|auxA\(11) $ (\inst2|Add0~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(11),
	cin => \inst2|Add0~21\,
	combout => \inst2|Add0~22_combout\);

-- Location: FF_X38_Y35_N23
\inst2|auxA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|s_clk_out_internal~clkctrl_outclk\,
	d => \inst2|Add0~18_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|auxA\(9));

-- Location: LCCOMB_X38_Y38_N24
\inst2|Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Equal0~2_combout\ = (\inst2|auxA\(1) & (\inst2|auxA\(2) & (\inst2|auxA\(0) & \inst2|auxA\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(1),
	datab => \inst2|auxA\(2),
	datac => \inst2|auxA\(0),
	datad => \inst2|auxA\(9),
	combout => \inst2|Equal0~2_combout\);

-- Location: LCCOMB_X38_Y35_N30
\inst2|auxA~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|auxA~1_combout\ = (\inst2|Add0~22_combout\ & (((!\inst2|Equal0~2_combout\) # (!\inst2|Equal0~4_combout\)) # (!\inst2|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~5_combout\,
	datab => \inst2|Equal0~4_combout\,
	datac => \inst2|Add0~22_combout\,
	datad => \inst2|Equal0~2_combout\,
	combout => \inst2|auxA~1_combout\);

-- Location: FF_X38_Y35_N31
\inst2|auxA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|s_clk_out_internal~clkctrl_outclk\,
	d => \inst2|auxA~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|auxA\(11));

-- Location: LCCOMB_X38_Y34_N6
\inst2|Equal0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Equal0~5_combout\ = (\inst2|auxA\(8) & (\inst2|auxA\(7) & (\inst2|auxA\(11) & !\inst2|auxA\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|auxA\(7),
	datac => \inst2|auxA\(11),
	datad => \inst2|auxA\(10),
	combout => \inst2|Equal0~5_combout\);

-- Location: LCCOMB_X38_Y35_N0
\inst2|auxA~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|auxA~0_combout\ = (\inst2|Add0~20_combout\ & (((!\inst2|Equal0~5_combout\) # (!\inst2|Equal0~4_combout\)) # (!\inst2|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~2_combout\,
	datab => \inst2|Add0~20_combout\,
	datac => \inst2|Equal0~4_combout\,
	datad => \inst2|Equal0~5_combout\,
	combout => \inst2|auxA~0_combout\);

-- Location: FF_X38_Y35_N1
\inst2|auxA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|s_clk_out_internal~clkctrl_outclk\,
	d => \inst2|auxA~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|auxA\(10));

-- Location: LCCOMB_X37_Y36_N4
\inst2|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux0~0_combout\ = (!\inst2|auxA\(11) & (((\inst2|Mux1~12_combout\) # (!\inst2|auxA\(10))) # (!\inst2|auxA\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(9),
	datab => \inst2|Mux1~12_combout\,
	datac => \inst2|auxA\(10),
	datad => \inst2|auxA\(11),
	combout => \inst2|Mux0~0_combout\);

-- Location: LCCOMB_X41_Y36_N10
\inst4|s_triangular_counter[0]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|s_triangular_counter[0]~8_combout\ = \inst4|s_triangular_counter\(0) $ (VCC)
-- \inst4|s_triangular_counter[0]~9\ = CARRY(\inst4|s_triangular_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_triangular_counter\(0),
	datad => VCC,
	combout => \inst4|s_triangular_counter[0]~8_combout\,
	cout => \inst4|s_triangular_counter[0]~9\);

-- Location: LCCOMB_X41_Y36_N12
\inst4|s_triangular_counter[1]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|s_triangular_counter[1]~10_combout\ = (\inst4|direction~q\ & ((\inst4|s_triangular_counter\(1) & (\inst4|s_triangular_counter[0]~9\ & VCC)) # (!\inst4|s_triangular_counter\(1) & (!\inst4|s_triangular_counter[0]~9\)))) # (!\inst4|direction~q\ & 
-- ((\inst4|s_triangular_counter\(1) & (!\inst4|s_triangular_counter[0]~9\)) # (!\inst4|s_triangular_counter\(1) & ((\inst4|s_triangular_counter[0]~9\) # (GND)))))
-- \inst4|s_triangular_counter[1]~11\ = CARRY((\inst4|direction~q\ & (!\inst4|s_triangular_counter\(1) & !\inst4|s_triangular_counter[0]~9\)) # (!\inst4|direction~q\ & ((!\inst4|s_triangular_counter[0]~9\) # (!\inst4|s_triangular_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|direction~q\,
	datab => \inst4|s_triangular_counter\(1),
	datad => VCC,
	cin => \inst4|s_triangular_counter[0]~9\,
	combout => \inst4|s_triangular_counter[1]~10_combout\,
	cout => \inst4|s_triangular_counter[1]~11\);

-- Location: LCCOMB_X41_Y36_N26
\inst4|Equal1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|Equal1~1_combout\ = (\inst4|s_triangular_counter\(6)) # (\inst4|s_triangular_counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|s_triangular_counter\(6),
	datad => \inst4|s_triangular_counter\(7),
	combout => \inst4|Equal1~1_combout\);

-- Location: FF_X41_Y36_N11
\inst4|s_triangular_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|s_clk_out_internal~clkctrl_outclk\,
	d => \inst4|s_triangular_counter[0]~8_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \inst4|s_triangular_counter[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_triangular_counter\(0));

-- Location: LCCOMB_X41_Y36_N28
\inst4|Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|Equal1~0_combout\ = (\inst4|s_triangular_counter\(1)) # ((\inst4|s_triangular_counter\(3)) # ((\inst4|s_triangular_counter\(2)) # (\inst4|s_triangular_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_triangular_counter\(1),
	datab => \inst4|s_triangular_counter\(3),
	datac => \inst4|s_triangular_counter\(2),
	datad => \inst4|s_triangular_counter\(0),
	combout => \inst4|Equal1~0_combout\);

-- Location: LCCOMB_X41_Y36_N4
\inst4|Equal1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|Equal1~2_combout\ = (\inst4|s_triangular_counter\(4)) # ((\inst4|s_triangular_counter\(5)) # ((\inst4|Equal1~1_combout\) # (\inst4|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_triangular_counter\(4),
	datab => \inst4|s_triangular_counter\(5),
	datac => \inst4|Equal1~1_combout\,
	datad => \inst4|Equal1~0_combout\,
	combout => \inst4|Equal1~2_combout\);

-- Location: LCCOMB_X41_Y36_N8
\inst4|s_triangular_counter[7]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|s_triangular_counter[7]~25_combout\ = (\inst4|s_triangular_counter\(1) & (\inst4|s_triangular_counter\(4) & \inst4|s_triangular_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_triangular_counter\(1),
	datab => \inst4|s_triangular_counter\(4),
	datad => \inst4|s_triangular_counter\(0),
	combout => \inst4|s_triangular_counter[7]~25_combout\);

-- Location: LCCOMB_X41_Y36_N0
\inst4|direction~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|direction~0_combout\ = (\inst4|s_triangular_counter[7]~26_combout\) # ((\inst4|direction~q\ & \inst4|Equal1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_triangular_counter[7]~26_combout\,
	datac => \inst4|direction~q\,
	datad => \inst4|Equal1~2_combout\,
	combout => \inst4|direction~0_combout\);

-- Location: FF_X41_Y36_N1
\inst4|direction\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|s_clk_out_internal~clkctrl_outclk\,
	d => \inst4|direction~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|direction~q\);

-- Location: LCCOMB_X41_Y36_N2
\inst4|s_triangular_counter[7]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|s_triangular_counter[7]~24_combout\ = (!\inst4|s_triangular_counter\(7) & (\inst4|s_triangular_counter\(5) & (!\inst4|s_triangular_counter\(6) & !\inst4|direction~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_triangular_counter\(7),
	datab => \inst4|s_triangular_counter\(5),
	datac => \inst4|s_triangular_counter\(6),
	datad => \inst4|direction~q\,
	combout => \inst4|s_triangular_counter[7]~24_combout\);

-- Location: LCCOMB_X41_Y36_N6
\inst4|s_triangular_counter[7]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|s_triangular_counter[7]~26_combout\ = (\inst4|s_triangular_counter\(2) & (\inst4|s_triangular_counter\(3) & (\inst4|s_triangular_counter[7]~25_combout\ & \inst4|s_triangular_counter[7]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_triangular_counter\(2),
	datab => \inst4|s_triangular_counter\(3),
	datac => \inst4|s_triangular_counter[7]~25_combout\,
	datad => \inst4|s_triangular_counter[7]~24_combout\,
	combout => \inst4|s_triangular_counter[7]~26_combout\);

-- Location: LCCOMB_X41_Y36_N30
\inst4|s_triangular_counter[7]~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|s_triangular_counter[7]~27_combout\ = (!\inst4|s_triangular_counter[7]~26_combout\ & ((\inst4|Equal1~2_combout\) # (!\inst4|direction~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|direction~q\,
	datac => \inst4|Equal1~2_combout\,
	datad => \inst4|s_triangular_counter[7]~26_combout\,
	combout => \inst4|s_triangular_counter[7]~27_combout\);

-- Location: FF_X41_Y36_N13
\inst4|s_triangular_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|s_clk_out_internal~clkctrl_outclk\,
	d => \inst4|s_triangular_counter[1]~10_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \inst4|s_triangular_counter[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_triangular_counter\(1));

-- Location: LCCOMB_X41_Y36_N14
\inst4|s_triangular_counter[2]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|s_triangular_counter[2]~12_combout\ = ((\inst4|direction~q\ $ (\inst4|s_triangular_counter\(2) $ (!\inst4|s_triangular_counter[1]~11\)))) # (GND)
-- \inst4|s_triangular_counter[2]~13\ = CARRY((\inst4|direction~q\ & ((\inst4|s_triangular_counter\(2)) # (!\inst4|s_triangular_counter[1]~11\))) # (!\inst4|direction~q\ & (\inst4|s_triangular_counter\(2) & !\inst4|s_triangular_counter[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|direction~q\,
	datab => \inst4|s_triangular_counter\(2),
	datad => VCC,
	cin => \inst4|s_triangular_counter[1]~11\,
	combout => \inst4|s_triangular_counter[2]~12_combout\,
	cout => \inst4|s_triangular_counter[2]~13\);

-- Location: FF_X41_Y36_N15
\inst4|s_triangular_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|s_clk_out_internal~clkctrl_outclk\,
	d => \inst4|s_triangular_counter[2]~12_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \inst4|s_triangular_counter[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_triangular_counter\(2));

-- Location: LCCOMB_X41_Y36_N16
\inst4|s_triangular_counter[3]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|s_triangular_counter[3]~14_combout\ = (\inst4|direction~q\ & ((\inst4|s_triangular_counter\(3) & (\inst4|s_triangular_counter[2]~13\ & VCC)) # (!\inst4|s_triangular_counter\(3) & (!\inst4|s_triangular_counter[2]~13\)))) # (!\inst4|direction~q\ & 
-- ((\inst4|s_triangular_counter\(3) & (!\inst4|s_triangular_counter[2]~13\)) # (!\inst4|s_triangular_counter\(3) & ((\inst4|s_triangular_counter[2]~13\) # (GND)))))
-- \inst4|s_triangular_counter[3]~15\ = CARRY((\inst4|direction~q\ & (!\inst4|s_triangular_counter\(3) & !\inst4|s_triangular_counter[2]~13\)) # (!\inst4|direction~q\ & ((!\inst4|s_triangular_counter[2]~13\) # (!\inst4|s_triangular_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|direction~q\,
	datab => \inst4|s_triangular_counter\(3),
	datad => VCC,
	cin => \inst4|s_triangular_counter[2]~13\,
	combout => \inst4|s_triangular_counter[3]~14_combout\,
	cout => \inst4|s_triangular_counter[3]~15\);

-- Location: FF_X41_Y36_N17
\inst4|s_triangular_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|s_clk_out_internal~clkctrl_outclk\,
	d => \inst4|s_triangular_counter[3]~14_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \inst4|s_triangular_counter[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_triangular_counter\(3));

-- Location: LCCOMB_X41_Y36_N18
\inst4|s_triangular_counter[4]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|s_triangular_counter[4]~16_combout\ = ((\inst4|direction~q\ $ (\inst4|s_triangular_counter\(4) $ (!\inst4|s_triangular_counter[3]~15\)))) # (GND)
-- \inst4|s_triangular_counter[4]~17\ = CARRY((\inst4|direction~q\ & ((\inst4|s_triangular_counter\(4)) # (!\inst4|s_triangular_counter[3]~15\))) # (!\inst4|direction~q\ & (\inst4|s_triangular_counter\(4) & !\inst4|s_triangular_counter[3]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|direction~q\,
	datab => \inst4|s_triangular_counter\(4),
	datad => VCC,
	cin => \inst4|s_triangular_counter[3]~15\,
	combout => \inst4|s_triangular_counter[4]~16_combout\,
	cout => \inst4|s_triangular_counter[4]~17\);

-- Location: FF_X41_Y36_N19
\inst4|s_triangular_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|s_clk_out_internal~clkctrl_outclk\,
	d => \inst4|s_triangular_counter[4]~16_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \inst4|s_triangular_counter[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_triangular_counter\(4));

-- Location: LCCOMB_X41_Y36_N20
\inst4|s_triangular_counter[5]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|s_triangular_counter[5]~18_combout\ = (\inst4|direction~q\ & ((\inst4|s_triangular_counter\(5) & (\inst4|s_triangular_counter[4]~17\ & VCC)) # (!\inst4|s_triangular_counter\(5) & (!\inst4|s_triangular_counter[4]~17\)))) # (!\inst4|direction~q\ & 
-- ((\inst4|s_triangular_counter\(5) & (!\inst4|s_triangular_counter[4]~17\)) # (!\inst4|s_triangular_counter\(5) & ((\inst4|s_triangular_counter[4]~17\) # (GND)))))
-- \inst4|s_triangular_counter[5]~19\ = CARRY((\inst4|direction~q\ & (!\inst4|s_triangular_counter\(5) & !\inst4|s_triangular_counter[4]~17\)) # (!\inst4|direction~q\ & ((!\inst4|s_triangular_counter[4]~17\) # (!\inst4|s_triangular_counter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|direction~q\,
	datab => \inst4|s_triangular_counter\(5),
	datad => VCC,
	cin => \inst4|s_triangular_counter[4]~17\,
	combout => \inst4|s_triangular_counter[5]~18_combout\,
	cout => \inst4|s_triangular_counter[5]~19\);

-- Location: FF_X41_Y36_N21
\inst4|s_triangular_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|s_clk_out_internal~clkctrl_outclk\,
	d => \inst4|s_triangular_counter[5]~18_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \inst4|s_triangular_counter[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_triangular_counter\(5));

-- Location: LCCOMB_X41_Y36_N22
\inst4|s_triangular_counter[6]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|s_triangular_counter[6]~20_combout\ = ((\inst4|direction~q\ $ (\inst4|s_triangular_counter\(6) $ (!\inst4|s_triangular_counter[5]~19\)))) # (GND)
-- \inst4|s_triangular_counter[6]~21\ = CARRY((\inst4|direction~q\ & ((\inst4|s_triangular_counter\(6)) # (!\inst4|s_triangular_counter[5]~19\))) # (!\inst4|direction~q\ & (\inst4|s_triangular_counter\(6) & !\inst4|s_triangular_counter[5]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|direction~q\,
	datab => \inst4|s_triangular_counter\(6),
	datad => VCC,
	cin => \inst4|s_triangular_counter[5]~19\,
	combout => \inst4|s_triangular_counter[6]~20_combout\,
	cout => \inst4|s_triangular_counter[6]~21\);

-- Location: FF_X41_Y36_N23
\inst4|s_triangular_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|s_clk_out_internal~clkctrl_outclk\,
	d => \inst4|s_triangular_counter[6]~20_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \inst4|s_triangular_counter[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_triangular_counter\(6));

-- Location: LCCOMB_X41_Y36_N24
\inst4|s_triangular_counter[7]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|s_triangular_counter[7]~22_combout\ = \inst4|direction~q\ $ (\inst4|s_triangular_counter[6]~21\ $ (\inst4|s_triangular_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|direction~q\,
	datad => \inst4|s_triangular_counter\(7),
	cin => \inst4|s_triangular_counter[6]~21\,
	combout => \inst4|s_triangular_counter[7]~22_combout\);

-- Location: FF_X41_Y36_N25
\inst4|s_triangular_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|s_clk_out_internal~clkctrl_outclk\,
	d => \inst4|s_triangular_counter[7]~22_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \inst4|s_triangular_counter[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_triangular_counter\(7));

-- Location: LCCOMB_X37_Y35_N30
\inst2|Mux1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux1~6_combout\ = (\inst2|auxA\(5)) # ((\inst2|auxA\(4)) # ((\inst2|auxA\(2) & \inst2|auxA\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(5),
	datab => \inst2|auxA\(2),
	datac => \inst2|auxA\(3),
	datad => \inst2|auxA\(4),
	combout => \inst2|Mux1~6_combout\);

-- Location: LCCOMB_X36_Y34_N24
\inst2|Mux1~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux1~7_combout\ = (\inst2|auxA\(7)) # ((\inst2|auxA\(6) & \inst2|Mux1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(7),
	datac => \inst2|Mux1~6_combout\,
	combout => \inst2|Mux1~7_combout\);

-- Location: FF_X38_Y35_N7
\inst2|auxA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|s_clk_out_internal~clkctrl_outclk\,
	d => \inst2|Add0~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|auxA\(1));

-- Location: LCCOMB_X34_Y35_N12
\inst2|Mux1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux1~4_combout\ = (\inst2|auxA\(3)) # ((\inst2|auxA\(2) & ((\inst2|auxA\(0)) # (\inst2|auxA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(0),
	datab => \inst2|auxA\(3),
	datac => \inst2|auxA\(2),
	datad => \inst2|auxA\(1),
	combout => \inst2|Mux1~4_combout\);

-- Location: LCCOMB_X41_Y35_N0
\inst2|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = (\inst2|auxA\(4) & \inst2|auxA\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|auxA\(4),
	datad => \inst2|auxA\(5),
	combout => \inst2|Equal0~0_combout\);

-- Location: LCCOMB_X35_Y34_N28
\inst2|Mux1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux1~5_combout\ = ((!\inst2|auxA\(6) & ((!\inst2|Equal0~0_combout\) # (!\inst2|Mux1~4_combout\)))) # (!\inst2|auxA\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(6),
	datac => \inst2|Mux1~4_combout\,
	datad => \inst2|Equal0~0_combout\,
	combout => \inst2|Mux1~5_combout\);

-- Location: LCCOMB_X35_Y34_N2
\inst2|Mux1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux1~8_combout\ = (\inst2|auxA\(8) & (\inst2|Mux1~7_combout\)) # (!\inst2|auxA\(8) & ((\inst2|Mux1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|Mux1~7_combout\,
	datad => \inst2|Mux1~5_combout\,
	combout => \inst2|Mux1~8_combout\);

-- Location: LCCOMB_X35_Y34_N30
\inst2|Mux1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux1~10_combout\ = (\inst2|Mux1~8_combout\ & (\inst2|auxA\(8) $ (((\inst2|auxA\(9)) # (\inst2|auxA\(10)))))) # (!\inst2|Mux1~8_combout\ & (((\inst2|auxA\(9) & \inst2|auxA\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|auxA\(9),
	datac => \inst2|auxA\(10),
	datad => \inst2|Mux1~8_combout\,
	combout => \inst2|Mux1~10_combout\);

-- Location: LCCOMB_X35_Y34_N0
\inst2|Mux1~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux1~9_combout\ = (\inst2|auxA\(9) & (((!\inst2|auxA\(10))))) # (!\inst2|auxA\(9) & (\inst2|Mux1~8_combout\ & (\inst2|auxA\(8) $ (\inst2|auxA\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|auxA\(9),
	datac => \inst2|auxA\(10),
	datad => \inst2|Mux1~8_combout\,
	combout => \inst2|Mux1~9_combout\);

-- Location: LCCOMB_X35_Y34_N20
\inst2|Mux1~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux1~11_combout\ = (\inst2|Mux1~10_combout\ & (!\inst2|auxA\(11) & ((\inst2|Mux1~9_combout\) # (!\inst2|Mux1~12_combout\)))) # (!\inst2|Mux1~10_combout\ & (((\inst2|Mux1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux1~12_combout\,
	datab => \inst2|auxA\(11),
	datac => \inst2|Mux1~10_combout\,
	datad => \inst2|Mux1~9_combout\,
	combout => \inst2|Mux1~11_combout\);

-- Location: LCCOMB_X36_Y33_N24
\inst2|Mux2~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux2~9_combout\ = (\inst2|auxA\(3) & ((\inst2|auxA\(0)) # ((\inst2|auxA\(1)) # (\inst2|auxA\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(0),
	datab => \inst2|auxA\(1),
	datac => \inst2|auxA\(2),
	datad => \inst2|auxA\(3),
	combout => \inst2|Mux2~9_combout\);

-- Location: LCCOMB_X36_Y33_N10
\inst2|Mux2~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux2~10_combout\ = ((!\inst2|auxA\(4) & !\inst2|Mux2~9_combout\)) # (!\inst2|auxA\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(4),
	datac => \inst2|auxA\(5),
	datad => \inst2|Mux2~9_combout\,
	combout => \inst2|Mux2~10_combout\);

-- Location: LCCOMB_X35_Y32_N18
\inst2|Mux2~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux2~17_combout\ = ((\inst2|Mux2~10_combout\ & !\inst2|auxA\(6))) # (!\inst2|auxA\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datac => \inst2|Mux2~10_combout\,
	datad => \inst2|auxA\(6),
	combout => \inst2|Mux2~17_combout\);

-- Location: LCCOMB_X35_Y32_N6
\inst2|Mux3~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux3~28_combout\ = (\inst2|auxA\(9) & (((\inst2|auxA\(8))))) # (!\inst2|auxA\(9) & ((\inst2|auxA\(8) & ((\inst2|Mux2~17_combout\))) # (!\inst2|auxA\(8) & (\inst2|Mux2~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux2~18_combout\,
	datab => \inst2|auxA\(9),
	datac => \inst2|auxA\(8),
	datad => \inst2|Mux2~17_combout\,
	combout => \inst2|Mux3~28_combout\);

-- Location: LCCOMB_X34_Y35_N0
\inst2|Mux3~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux3~38_combout\ = (\inst2|auxA\(4) & (((!\inst2|Mux1~4_combout\)) # (!\inst2|auxA\(5)))) # (!\inst2|auxA\(4) & ((\inst2|auxA\(5)) # ((\inst2|auxA\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(4),
	datab => \inst2|auxA\(5),
	datac => \inst2|auxA\(3),
	datad => \inst2|Mux1~4_combout\,
	combout => \inst2|Mux3~38_combout\);

-- Location: LCCOMB_X34_Y35_N6
\inst2|Mux3~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux3~39_combout\ = (\inst2|auxA\(6) & (!\inst2|auxA\(7) & ((\inst2|auxA\(5)) # (\inst2|Mux3~38_combout\)))) # (!\inst2|auxA\(6) & (\inst2|auxA\(7) & ((\inst2|Mux3~38_combout\) # (!\inst2|auxA\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(7),
	datac => \inst2|auxA\(5),
	datad => \inst2|Mux3~38_combout\,
	combout => \inst2|Mux3~39_combout\);

-- Location: LCCOMB_X37_Y32_N18
\inst2|Mux3~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux3~30_combout\ = (\inst2|auxA\(4)) # ((\inst2|auxA\(6) & ((\inst2|auxA\(2)) # (\inst2|auxA\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(4),
	datab => \inst2|auxA\(2),
	datac => \inst2|auxA\(3),
	datad => \inst2|auxA\(6),
	combout => \inst2|Mux3~30_combout\);

-- Location: LCCOMB_X36_Y33_N4
\inst2|Mux3~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux3~29_combout\ = (\inst2|auxA\(2)) # ((\inst2|auxA\(3)) # ((\inst2|auxA\(0) & \inst2|auxA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(0),
	datab => \inst2|auxA\(1),
	datac => \inst2|auxA\(2),
	datad => \inst2|auxA\(3),
	combout => \inst2|Mux3~29_combout\);

-- Location: LCCOMB_X37_Y32_N20
\inst2|Mux3~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux3~31_combout\ = (\inst2|Mux3~30_combout\ & ((\inst2|auxA\(5) & ((\inst2|Mux3~29_combout\))) # (!\inst2|auxA\(5) & (!\inst2|Mux3~8_combout\)))) # (!\inst2|Mux3~30_combout\ & (((\inst2|auxA\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux3~8_combout\,
	datab => \inst2|Mux3~30_combout\,
	datac => \inst2|auxA\(5),
	datad => \inst2|Mux3~29_combout\,
	combout => \inst2|Mux3~31_combout\);

-- Location: LCCOMB_X37_Y32_N22
\inst2|Mux3~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux3~32_combout\ = (\inst2|auxA\(5) & \inst2|Mux3~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|auxA\(5),
	datad => \inst2|Mux3~30_combout\,
	combout => \inst2|Mux3~32_combout\);

-- Location: LCCOMB_X37_Y32_N16
\inst2|Mux3~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux3~33_combout\ = (\inst2|auxA\(7) & ((\inst2|auxA\(6)) # ((\inst2|Mux3~31_combout\ & \inst2|Mux3~32_combout\)))) # (!\inst2|auxA\(7) & ((\inst2|Mux3~32_combout\ & ((!\inst2|auxA\(6)))) # (!\inst2|Mux3~32_combout\ & ((\inst2|Mux3~31_combout\) # 
-- (\inst2|auxA\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|Mux3~31_combout\,
	datac => \inst2|Mux3~32_combout\,
	datad => \inst2|auxA\(6),
	combout => \inst2|Mux3~33_combout\);

-- Location: LCCOMB_X36_Y32_N8
\inst2|Mux3~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux3~34_combout\ = (\inst2|auxA\(9) & ((\inst2|Mux3~28_combout\ & ((\inst2|Mux3~33_combout\))) # (!\inst2|Mux3~28_combout\ & (\inst2|Mux3~39_combout\)))) # (!\inst2|auxA\(9) & (\inst2|Mux3~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(9),
	datab => \inst2|Mux3~28_combout\,
	datac => \inst2|Mux3~39_combout\,
	datad => \inst2|Mux3~33_combout\,
	combout => \inst2|Mux3~34_combout\);

-- Location: LCCOMB_X36_Y33_N30
\inst2|Mux3~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux3~37_combout\ = (\inst2|auxA\(4) & (\inst2|auxA\(5) & (\inst2|auxA\(7) & \inst2|Mux2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(4),
	datab => \inst2|auxA\(5),
	datac => \inst2|auxA\(7),
	datad => \inst2|Mux2~9_combout\,
	combout => \inst2|Mux3~37_combout\);

-- Location: LCCOMB_X36_Y32_N30
\inst2|Mux3~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux3~21_combout\ = (\inst2|Mux3~37_combout\) # ((\inst2|auxA\(7) & ((\inst2|auxA\(6)))) # (!\inst2|auxA\(7) & ((!\inst2|auxA\(6)) # (!\inst2|Mux1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux1~6_combout\,
	datab => \inst2|auxA\(7),
	datac => \inst2|Mux3~37_combout\,
	datad => \inst2|auxA\(6),
	combout => \inst2|Mux3~21_combout\);

-- Location: LCCOMB_X36_Y32_N0
\inst2|Mux3~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux3~22_combout\ = (\inst2|auxA\(5)) # ((\inst2|auxA\(3) & (\inst2|auxA\(1) & \inst2|auxA\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(3),
	datab => \inst2|auxA\(5),
	datac => \inst2|auxA\(1),
	datad => \inst2|auxA\(2),
	combout => \inst2|Mux3~22_combout\);

-- Location: LCCOMB_X36_Y32_N26
\inst2|Mux3~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux3~23_combout\ = (\inst2|auxA\(7) & (\inst2|auxA\(5) & (\inst2|auxA\(4)))) # (!\inst2|auxA\(7) & (((\inst2|auxA\(4)) # (\inst2|Mux3~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(5),
	datab => \inst2|auxA\(7),
	datac => \inst2|auxA\(4),
	datad => \inst2|Mux3~22_combout\,
	combout => \inst2|Mux3~23_combout\);

-- Location: LCCOMB_X35_Y35_N8
\inst2|Mux2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux2~2_combout\ = (\inst2|auxA\(3) & (\inst2|auxA\(2) & ((\inst2|auxA\(0)) # (\inst2|auxA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(3),
	datab => \inst2|auxA\(0),
	datac => \inst2|auxA\(1),
	datad => \inst2|auxA\(2),
	combout => \inst2|Mux2~2_combout\);

-- Location: LCCOMB_X36_Y32_N28
\inst2|Mux2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux2~3_combout\ = (\inst2|auxA\(7) & (\inst2|Mux7~0_combout\ & ((!\inst2|Mux2~2_combout\) # (!\inst2|auxA\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(4),
	datac => \inst2|Mux2~2_combout\,
	datad => \inst2|Mux7~0_combout\,
	combout => \inst2|Mux2~3_combout\);

-- Location: LCCOMB_X36_Y32_N16
\inst2|Mux3~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux3~24_combout\ = (\inst2|Mux2~3_combout\) # ((\inst2|auxA\(6) & \inst2|Mux3~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datac => \inst2|Mux3~23_combout\,
	datad => \inst2|Mux2~3_combout\,
	combout => \inst2|Mux3~24_combout\);

-- Location: LCCOMB_X36_Y32_N14
\inst2|Mux3~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux3~25_combout\ = (\inst2|auxA\(9) & (\inst2|auxA\(8))) # (!\inst2|auxA\(9) & ((\inst2|auxA\(8) & (\inst2|Mux3~21_combout\)) # (!\inst2|auxA\(8) & ((\inst2|Mux3~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(9),
	datab => \inst2|auxA\(8),
	datac => \inst2|Mux3~21_combout\,
	datad => \inst2|Mux3~24_combout\,
	combout => \inst2|Mux3~25_combout\);

-- Location: LCCOMB_X36_Y32_N4
\inst2|Mux3~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux3~26_combout\ = (\inst2|auxA\(9) & ((\inst2|Mux3~25_combout\ & ((!\inst2|Mux2~17_combout\))) # (!\inst2|Mux3~25_combout\ & (!\inst2|Mux2~18_combout\)))) # (!\inst2|auxA\(9) & (((\inst2|Mux3~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux2~18_combout\,
	datab => \inst2|auxA\(9),
	datac => \inst2|Mux3~25_combout\,
	datad => \inst2|Mux2~17_combout\,
	combout => \inst2|Mux3~26_combout\);

-- Location: LCCOMB_X39_Y37_N12
\inst2|Mux3~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux3~18_combout\ = (\inst2|auxA\(4)) # ((\inst2|auxA\(2) & ((\inst2|auxA\(3)) # (!\inst2|auxA\(9)))) # (!\inst2|auxA\(2) & (!\inst2|auxA\(9) & \inst2|auxA\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(2),
	datab => \inst2|auxA\(9),
	datac => \inst2|auxA\(4),
	datad => \inst2|auxA\(3),
	combout => \inst2|Mux3~18_combout\);

-- Location: LCCOMB_X39_Y37_N14
\inst2|Mux3~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux3~19_combout\ = (!\inst2|auxA\(7) & ((\inst2|auxA\(5) & ((\inst2|auxA\(9)) # (\inst2|Mux3~18_combout\))) # (!\inst2|auxA\(5) & (\inst2|auxA\(9) & \inst2|Mux3~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(5),
	datab => \inst2|auxA\(9),
	datac => \inst2|auxA\(7),
	datad => \inst2|Mux3~18_combout\,
	combout => \inst2|Mux3~19_combout\);

-- Location: LCCOMB_X39_Y37_N28
\inst2|Mux3~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux3~6_combout\ = (\inst2|auxA\(3) & (((\inst2|auxA\(2) & \inst2|auxA\(1))) # (!\inst2|auxA\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(2),
	datab => \inst2|auxA\(9),
	datac => \inst2|auxA\(1),
	datad => \inst2|auxA\(3),
	combout => \inst2|Mux3~6_combout\);

-- Location: LCCOMB_X39_Y37_N30
\inst2|Mux3~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux3~7_combout\ = (!\inst2|auxA\(7) & ((\inst2|auxA\(5)) # ((\inst2|auxA\(4)) # (\inst2|Mux3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(5),
	datab => \inst2|auxA\(4),
	datac => \inst2|auxA\(7),
	datad => \inst2|Mux3~6_combout\,
	combout => \inst2|Mux3~7_combout\);

-- Location: LCCOMB_X39_Y37_N6
\inst2|Mux3~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux3~36_combout\ = (\inst2|Mux3~7_combout\) # ((\inst2|auxA\(4) & (\inst2|auxA\(9) & \inst2|auxA\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(4),
	datab => \inst2|auxA\(9),
	datac => \inst2|Mux3~7_combout\,
	datad => \inst2|auxA\(5),
	combout => \inst2|Mux3~36_combout\);

-- Location: LCCOMB_X37_Y32_N4
\inst2|Mux3~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux3~9_combout\ = (!\inst2|auxA\(5) & (!\inst2|auxA\(9) & ((\inst2|Mux3~8_combout\) # (!\inst2|auxA\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux3~8_combout\,
	datab => \inst2|auxA\(5),
	datac => \inst2|auxA\(4),
	datad => \inst2|auxA\(9),
	combout => \inst2|Mux3~9_combout\);

-- Location: LCCOMB_X37_Y32_N8
\inst2|Mux3~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux3~11_combout\ = (!\inst2|auxA\(9) & ((\inst2|auxA\(2)) # ((\inst2|auxA\(0) & \inst2|auxA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(0),
	datab => \inst2|auxA\(9),
	datac => \inst2|auxA\(2),
	datad => \inst2|auxA\(1),
	combout => \inst2|Mux3~11_combout\);

-- Location: LCCOMB_X37_Y32_N2
\inst2|Mux3~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux3~10_combout\ = (!\inst2|auxA\(0) & (\inst2|auxA\(9) & (!\inst2|auxA\(2) & !\inst2|auxA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(0),
	datab => \inst2|auxA\(9),
	datac => \inst2|auxA\(2),
	datad => \inst2|auxA\(1),
	combout => \inst2|Mux3~10_combout\);

-- Location: LCCOMB_X37_Y32_N6
\inst2|Mux3~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux3~12_combout\ = ((\inst2|auxA\(3) & ((\inst2|Mux3~10_combout\))) # (!\inst2|auxA\(3) & (!\inst2|Mux3~11_combout\))) # (!\inst2|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(3),
	datab => \inst2|Mux3~11_combout\,
	datac => \inst2|Equal0~0_combout\,
	datad => \inst2|Mux3~10_combout\,
	combout => \inst2|Mux3~12_combout\);

-- Location: LCCOMB_X37_Y32_N12
\inst2|Mux3~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux3~13_combout\ = (\inst2|Mux3~9_combout\) # ((\inst2|auxA\(7) & \inst2|Mux3~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datac => \inst2|Mux3~9_combout\,
	datad => \inst2|Mux3~12_combout\,
	combout => \inst2|Mux3~13_combout\);

-- Location: LCCOMB_X36_Y32_N22
\inst2|Mux3~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux3~15_combout\ = (\inst2|auxA\(5) & ((\inst2|auxA\(9)) # ((\inst2|auxA\(4) & \inst2|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(9),
	datab => \inst2|auxA\(4),
	datac => \inst2|Mux1~4_combout\,
	datad => \inst2|auxA\(5),
	combout => \inst2|Mux3~15_combout\);

-- Location: LCCOMB_X37_Y37_N28
\inst2|Mux5~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~4_combout\ = (!\inst2|auxA\(4) & !\inst2|auxA\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(4),
	datad => \inst2|auxA\(3),
	combout => \inst2|Mux5~4_combout\);

-- Location: LCCOMB_X37_Y37_N6
\inst2|Mux5~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~5_combout\ = (!\inst2|auxA\(1) & (!\inst2|auxA\(0) & (!\inst2|auxA\(2) & \inst2|Mux5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(1),
	datab => \inst2|auxA\(0),
	datac => \inst2|auxA\(2),
	datad => \inst2|Mux5~4_combout\,
	combout => \inst2|Mux5~5_combout\);

-- Location: LCCOMB_X36_Y32_N24
\inst2|Mux3~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux3~14_combout\ = (!\inst2|auxA\(7) & ((!\inst2|Mux5~5_combout\) # (!\inst2|auxA\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|auxA\(9),
	datac => \inst2|auxA\(7),
	datad => \inst2|Mux5~5_combout\,
	combout => \inst2|Mux3~14_combout\);

-- Location: LCCOMB_X36_Y32_N20
\inst2|Mux3~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux3~16_combout\ = (\inst2|Mux3~15_combout\) # ((\inst2|Mux3~14_combout\) # ((\inst2|Mux4~8_combout\ & \inst2|auxA\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux4~8_combout\,
	datab => \inst2|auxA\(9),
	datac => \inst2|Mux3~15_combout\,
	datad => \inst2|Mux3~14_combout\,
	combout => \inst2|Mux3~16_combout\);

-- Location: LCCOMB_X36_Y32_N10
\inst2|Mux3~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux3~17_combout\ = (\inst2|auxA\(6) & (\inst2|auxA\(8))) # (!\inst2|auxA\(6) & ((\inst2|auxA\(8) & (\inst2|Mux3~13_combout\)) # (!\inst2|auxA\(8) & ((\inst2|Mux3~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(8),
	datac => \inst2|Mux3~13_combout\,
	datad => \inst2|Mux3~16_combout\,
	combout => \inst2|Mux3~17_combout\);

-- Location: LCCOMB_X36_Y32_N12
\inst2|Mux3~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux3~20_combout\ = (\inst2|auxA\(6) & ((\inst2|Mux3~17_combout\ & (\inst2|Mux3~19_combout\)) # (!\inst2|Mux3~17_combout\ & ((!\inst2|Mux3~36_combout\))))) # (!\inst2|auxA\(6) & (((\inst2|Mux3~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|Mux3~19_combout\,
	datac => \inst2|Mux3~36_combout\,
	datad => \inst2|Mux3~17_combout\,
	combout => \inst2|Mux3~20_combout\);

-- Location: LCCOMB_X36_Y32_N2
\inst2|Mux3~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux3~27_combout\ = (!\inst2|auxA\(11) & ((\inst2|auxA\(10) & ((\inst2|Mux3~20_combout\))) # (!\inst2|auxA\(10) & (\inst2|Mux3~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(10),
	datab => \inst2|auxA\(11),
	datac => \inst2|Mux3~26_combout\,
	datad => \inst2|Mux3~20_combout\,
	combout => \inst2|Mux3~27_combout\);

-- Location: LCCOMB_X36_Y32_N18
\inst2|Mux3~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux3~35_combout\ = (\inst2|Mux3~27_combout\) # ((!\inst2|auxA\(10) & (\inst2|auxA\(11) & \inst2|Mux3~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(10),
	datab => \inst2|auxA\(11),
	datac => \inst2|Mux3~34_combout\,
	datad => \inst2|Mux3~27_combout\,
	combout => \inst2|Mux3~35_combout\);

-- Location: LCCOMB_X36_Y36_N16
\inst|LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_cout\ = CARRY((\inst2|Mux7~188_combout\ & !\inst4|s_triangular_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux7~188_combout\,
	datab => \inst4|s_triangular_counter\(0),
	datad => VCC,
	cout => \inst|LessThan0~1_cout\);

-- Location: LCCOMB_X36_Y36_N18
\inst|LessThan0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_cout\ = CARRY((\inst2|Mux6~165_combout\ & (\inst4|s_triangular_counter\(1) & !\inst|LessThan0~1_cout\)) # (!\inst2|Mux6~165_combout\ & ((\inst4|s_triangular_counter\(1)) # (!\inst|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux6~165_combout\,
	datab => \inst4|s_triangular_counter\(1),
	datad => VCC,
	cin => \inst|LessThan0~1_cout\,
	cout => \inst|LessThan0~3_cout\);

-- Location: LCCOMB_X36_Y36_N20
\inst|LessThan0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|LessThan0~5_cout\ = CARRY((\inst2|Mux5~88_combout\ & ((!\inst|LessThan0~3_cout\) # (!\inst4|s_triangular_counter\(2)))) # (!\inst2|Mux5~88_combout\ & (!\inst4|s_triangular_counter\(2) & !\inst|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux5~88_combout\,
	datab => \inst4|s_triangular_counter\(2),
	datad => VCC,
	cin => \inst|LessThan0~3_cout\,
	cout => \inst|LessThan0~5_cout\);

-- Location: LCCOMB_X36_Y36_N22
\inst|LessThan0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|LessThan0~7_cout\ = CARRY((\inst2|Mux4~59_combout\ & (\inst4|s_triangular_counter\(3) & !\inst|LessThan0~5_cout\)) # (!\inst2|Mux4~59_combout\ & ((\inst4|s_triangular_counter\(3)) # (!\inst|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux4~59_combout\,
	datab => \inst4|s_triangular_counter\(3),
	datad => VCC,
	cin => \inst|LessThan0~5_cout\,
	cout => \inst|LessThan0~7_cout\);

-- Location: LCCOMB_X36_Y36_N24
\inst|LessThan0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|LessThan0~9_cout\ = CARRY((\inst4|s_triangular_counter\(4) & (\inst2|Mux3~35_combout\ & !\inst|LessThan0~7_cout\)) # (!\inst4|s_triangular_counter\(4) & ((\inst2|Mux3~35_combout\) # (!\inst|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_triangular_counter\(4),
	datab => \inst2|Mux3~35_combout\,
	datad => VCC,
	cin => \inst|LessThan0~7_cout\,
	cout => \inst|LessThan0~9_cout\);

-- Location: LCCOMB_X36_Y36_N26
\inst|LessThan0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|LessThan0~11_cout\ = CARRY((\inst2|Mux2~21_combout\ & (\inst4|s_triangular_counter\(5) & !\inst|LessThan0~9_cout\)) # (!\inst2|Mux2~21_combout\ & ((\inst4|s_triangular_counter\(5)) # (!\inst|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux2~21_combout\,
	datab => \inst4|s_triangular_counter\(5),
	datad => VCC,
	cin => \inst|LessThan0~9_cout\,
	cout => \inst|LessThan0~11_cout\);

-- Location: LCCOMB_X36_Y36_N28
\inst|LessThan0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|LessThan0~13_cout\ = CARRY((\inst4|s_triangular_counter\(6) & (\inst2|Mux1~11_combout\ & !\inst|LessThan0~11_cout\)) # (!\inst4|s_triangular_counter\(6) & ((\inst2|Mux1~11_combout\) # (!\inst|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_triangular_counter\(6),
	datab => \inst2|Mux1~11_combout\,
	datad => VCC,
	cin => \inst|LessThan0~11_cout\,
	cout => \inst|LessThan0~13_cout\);

-- Location: LCCOMB_X36_Y36_N30
\inst|LessThan0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|LessThan0~14_combout\ = (\inst2|Mux0~0_combout\ & ((\inst|LessThan0~13_cout\) # (!\inst4|s_triangular_counter\(7)))) # (!\inst2|Mux0~0_combout\ & (\inst|LessThan0~13_cout\ & !\inst4|s_triangular_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mux0~0_combout\,
	datad => \inst4|s_triangular_counter\(7),
	cin => \inst|LessThan0~13_cout\,
	combout => \inst|LessThan0~14_combout\);

-- Location: FF_X36_Y36_N31
\inst|pwm_output0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pwm_output0~q\);

-- Location: LCCOMB_X38_Y36_N2
\inst4|Add2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|Add2~0_combout\ = \inst4|s_triangular_counter\(7) $ (\inst4|s_triangular_counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|s_triangular_counter\(7),
	datad => \inst4|s_triangular_counter\(6),
	combout => \inst4|Add2~0_combout\);

-- Location: LCCOMB_X37_Y35_N10
\inst2|Mux4~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~25_combout\ = (\inst2|auxA\(3)) # ((\inst2|auxA\(4)) # ((\inst2|auxA\(1) & \inst2|auxA\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(1),
	datab => \inst2|auxA\(2),
	datac => \inst2|auxA\(3),
	datad => \inst2|auxA\(4),
	combout => \inst2|Mux4~25_combout\);

-- Location: LCCOMB_X35_Y33_N12
\inst2|Mux4~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~54_combout\ = (\inst2|auxA\(8) & (\inst2|Mux4~21_combout\)) # (!\inst2|auxA\(8) & ((\inst2|Mux4~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux4~21_combout\,
	datac => \inst2|auxA\(8),
	datad => \inst2|Mux4~25_combout\,
	combout => \inst2|Mux4~54_combout\);

-- Location: LCCOMB_X35_Y33_N26
\inst2|Mux4~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~55_combout\ = (\inst2|auxA\(5) & (\inst2|auxA\(8))) # (!\inst2|auxA\(5) & ((\inst2|auxA\(8) $ (!\inst2|auxA\(9))) # (!\inst2|Mux4~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|auxA\(9),
	datac => \inst2|auxA\(5),
	datad => \inst2|Mux4~54_combout\,
	combout => \inst2|Mux4~55_combout\);

-- Location: LCCOMB_X35_Y33_N0
\inst2|Mux4~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~56_combout\ = ((\inst2|auxA\(4) & \inst2|Mux2~2_combout\)) # (!\inst2|auxA\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|auxA\(9),
	datac => \inst2|auxA\(4),
	datad => \inst2|Mux2~2_combout\,
	combout => \inst2|Mux4~56_combout\);

-- Location: LCCOMB_X35_Y33_N6
\inst2|Mux4~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~57_combout\ = (\inst2|auxA\(5) & ((\inst2|Mux4~55_combout\ & ((!\inst2|Mux4~56_combout\))) # (!\inst2|Mux4~55_combout\ & (!\inst2|Mux4~53_combout\)))) # (!\inst2|auxA\(5) & (((\inst2|Mux4~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux4~53_combout\,
	datab => \inst2|auxA\(5),
	datac => \inst2|Mux4~55_combout\,
	datad => \inst2|Mux4~56_combout\,
	combout => \inst2|Mux4~57_combout\);

-- Location: LCCOMB_X37_Y35_N4
\inst2|Mux4~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~32_combout\ = (\inst2|auxA\(3)) # ((\inst2|auxA\(1) & (\inst2|auxA\(2) & \inst2|auxA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(1),
	datab => \inst2|auxA\(3),
	datac => \inst2|auxA\(2),
	datad => \inst2|auxA\(0),
	combout => \inst2|Mux4~32_combout\);

-- Location: LCCOMB_X34_Y35_N30
\inst2|Mux4~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~14_combout\ = (\inst2|auxA\(3) & ((\inst2|auxA\(2)) # ((\inst2|auxA\(0) & \inst2|auxA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(0),
	datab => \inst2|auxA\(2),
	datac => \inst2|auxA\(3),
	datad => \inst2|auxA\(1),
	combout => \inst2|Mux4~14_combout\);

-- Location: LCCOMB_X34_Y33_N4
\inst2|Mux4~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~64_combout\ = (\inst2|auxA\(9) & (!\inst2|auxA\(4) & (!\inst2|Mux4~32_combout\))) # (!\inst2|auxA\(9) & (((!\inst2|Mux4~14_combout\)) # (!\inst2|auxA\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(9),
	datab => \inst2|auxA\(4),
	datac => \inst2|Mux4~32_combout\,
	datad => \inst2|Mux4~14_combout\,
	combout => \inst2|Mux4~64_combout\);

-- Location: LCCOMB_X37_Y35_N28
\inst2|Mux3~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux3~8_combout\ = (!\inst2|auxA\(1) & (!\inst2|auxA\(3) & (!\inst2|auxA\(2) & !\inst2|auxA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(1),
	datab => \inst2|auxA\(3),
	datac => \inst2|auxA\(2),
	datad => \inst2|auxA\(0),
	combout => \inst2|Mux3~8_combout\);

-- Location: LCCOMB_X37_Y35_N20
\inst2|Mux4~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~49_combout\ = (!\inst2|auxA\(2) & !\inst2|auxA\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|auxA\(2),
	datad => \inst2|auxA\(3),
	combout => \inst2|Mux4~49_combout\);

-- Location: LCCOMB_X34_Y33_N30
\inst2|Mux4~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~50_combout\ = (\inst2|auxA\(9) & ((\inst2|auxA\(4)) # ((!\inst2|Mux3~8_combout\)))) # (!\inst2|auxA\(9) & (!\inst2|auxA\(4) & ((\inst2|Mux4~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(9),
	datab => \inst2|auxA\(4),
	datac => \inst2|Mux3~8_combout\,
	datad => \inst2|Mux4~49_combout\,
	combout => \inst2|Mux4~50_combout\);

-- Location: LCCOMB_X34_Y33_N20
\inst2|Mux4~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~48_combout\ = (\inst2|auxA\(9) & (((!\inst2|Mux2~2_combout\)) # (!\inst2|auxA\(4)))) # (!\inst2|auxA\(9) & (\inst2|auxA\(4) & (!\inst2|Mux3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(9),
	datab => \inst2|auxA\(4),
	datac => \inst2|Mux3~8_combout\,
	datad => \inst2|Mux2~2_combout\,
	combout => \inst2|Mux4~48_combout\);

-- Location: LCCOMB_X34_Y33_N28
\inst2|Mux4~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~51_combout\ = (\inst2|auxA\(5) & (\inst2|auxA\(8))) # (!\inst2|auxA\(5) & ((\inst2|auxA\(8) & ((\inst2|Mux4~48_combout\))) # (!\inst2|auxA\(8) & (\inst2|Mux4~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(5),
	datab => \inst2|auxA\(8),
	datac => \inst2|Mux4~50_combout\,
	datad => \inst2|Mux4~48_combout\,
	combout => \inst2|Mux4~51_combout\);

-- Location: LCCOMB_X34_Y33_N14
\inst2|Mux4~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~65_combout\ = (\inst2|auxA\(5) & (\inst2|Mux4~64_combout\ & (\inst2|auxA\(9) $ (\inst2|Mux4~51_combout\)))) # (!\inst2|auxA\(5) & (((\inst2|Mux4~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(5),
	datab => \inst2|Mux4~64_combout\,
	datac => \inst2|auxA\(9),
	datad => \inst2|Mux4~51_combout\,
	combout => \inst2|Mux4~65_combout\);

-- Location: LCCOMB_X35_Y35_N26
\inst2|Mux4~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~10_combout\ = (\inst2|auxA\(3) & \inst2|auxA\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|auxA\(3),
	datad => \inst2|auxA\(2),
	combout => \inst2|Mux4~10_combout\);

-- Location: LCCOMB_X36_Y33_N8
\inst2|Mux4~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~42_combout\ = (\inst2|auxA\(8) & ((\inst2|auxA\(5)) # ((!\inst2|Mux4~10_combout\)))) # (!\inst2|auxA\(8) & (!\inst2|auxA\(5) & (\inst2|Mux3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|auxA\(5),
	datac => \inst2|Mux3~8_combout\,
	datad => \inst2|Mux4~10_combout\,
	combout => \inst2|Mux4~42_combout\);

-- Location: LCCOMB_X37_Y33_N4
\inst2|Mux4~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~43_combout\ = (\inst2|auxA\(5) & ((\inst2|auxA\(4)) # ((\inst2|auxA\(9) & !\inst2|Mux4~42_combout\)))) # (!\inst2|auxA\(5) & (!\inst2|auxA\(9) & (!\inst2|auxA\(4) & \inst2|Mux4~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(5),
	datab => \inst2|auxA\(9),
	datac => \inst2|auxA\(4),
	datad => \inst2|Mux4~42_combout\,
	combout => \inst2|Mux4~43_combout\);

-- Location: LCCOMB_X37_Y32_N26
\inst2|Mux4~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~45_combout\ = (\inst2|auxA\(9)) # ((\inst2|auxA\(2) & ((\inst2|auxA\(0)) # (\inst2|auxA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(0),
	datab => \inst2|auxA\(9),
	datac => \inst2|auxA\(2),
	datad => \inst2|auxA\(1),
	combout => \inst2|Mux4~45_combout\);

-- Location: LCCOMB_X37_Y32_N24
\inst2|Mux4~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~44_combout\ = (\inst2|auxA\(8) & ((\inst2|auxA\(3) & ((!\inst2|Mux3~10_combout\))) # (!\inst2|auxA\(3) & (\inst2|Mux3~11_combout\)))) # (!\inst2|auxA\(8) & (\inst2|auxA\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|auxA\(3),
	datac => \inst2|Mux3~11_combout\,
	datad => \inst2|Mux3~10_combout\,
	combout => \inst2|Mux4~44_combout\);

-- Location: LCCOMB_X37_Y32_N0
\inst2|Mux4~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~46_combout\ = (\inst2|Mux4~44_combout\) # ((!\inst2|auxA\(8) & \inst2|Mux4~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datac => \inst2|Mux4~45_combout\,
	datad => \inst2|Mux4~44_combout\,
	combout => \inst2|Mux4~46_combout\);

-- Location: LCCOMB_X37_Y33_N2
\inst2|Mux4~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~47_combout\ = (\inst2|auxA\(4) & ((\inst2|Mux4~43_combout\ & ((\inst2|Mux4~46_combout\))) # (!\inst2|Mux4~43_combout\ & (\inst2|Mux4~41_combout\)))) # (!\inst2|auxA\(4) & (((\inst2|Mux4~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux4~41_combout\,
	datab => \inst2|auxA\(4),
	datac => \inst2|Mux4~43_combout\,
	datad => \inst2|Mux4~46_combout\,
	combout => \inst2|Mux4~47_combout\);

-- Location: LCCOMB_X37_Y33_N8
\inst2|Mux4~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~52_combout\ = (\inst2|auxA\(7) & ((\inst2|auxA\(6)) # ((\inst2|Mux4~47_combout\)))) # (!\inst2|auxA\(7) & (!\inst2|auxA\(6) & (\inst2|Mux4~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(6),
	datac => \inst2|Mux4~65_combout\,
	datad => \inst2|Mux4~47_combout\,
	combout => \inst2|Mux4~52_combout\);

-- Location: LCCOMB_X38_Y33_N2
\inst2|Mux4~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~66_combout\ = (\inst2|auxA\(8)) # ((\inst2|auxA\(4) & ((!\inst2|Mux1~4_combout\) # (!\inst2|auxA\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(9),
	datab => \inst2|auxA\(4),
	datac => \inst2|Mux1~4_combout\,
	datad => \inst2|auxA\(8),
	combout => \inst2|Mux4~66_combout\);

-- Location: LCCOMB_X37_Y33_N18
\inst2|Mux4~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~67_combout\ = (\inst2|auxA\(4) & (((\inst2|Mux4~66_combout\)))) # (!\inst2|auxA\(4) & (\inst2|auxA\(2) & ((\inst2|auxA\(1)) # (\inst2|Mux4~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(2),
	datab => \inst2|auxA\(4),
	datac => \inst2|auxA\(1),
	datad => \inst2|Mux4~66_combout\,
	combout => \inst2|Mux4~67_combout\);

-- Location: LCCOMB_X37_Y33_N30
\inst2|Mux4~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~38_combout\ = (\inst2|Mux4~67_combout\ & (((\inst2|auxA\(5))))) # (!\inst2|Mux4~67_combout\ & (!\inst2|auxA\(4) & ((\inst2|auxA\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(4),
	datab => \inst2|auxA\(5),
	datac => \inst2|auxA\(3),
	datad => \inst2|Mux4~67_combout\,
	combout => \inst2|Mux4~38_combout\);

-- Location: LCCOMB_X37_Y33_N28
\inst2|Mux4~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~39_combout\ = (\inst2|auxA\(4) & (((\inst2|Mux4~67_combout\)) # (!\inst2|auxA\(5)))) # (!\inst2|auxA\(4) & ((\inst2|auxA\(5)) # ((\inst2|auxA\(3) & \inst2|Mux4~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(4),
	datab => \inst2|auxA\(5),
	datac => \inst2|auxA\(3),
	datad => \inst2|Mux4~67_combout\,
	combout => \inst2|Mux4~39_combout\);

-- Location: LCCOMB_X37_Y33_N6
\inst2|Mux4~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~40_combout\ = (\inst2|auxA\(8) & (\inst2|Mux4~39_combout\ & ((\inst2|auxA\(9)) # (\inst2|Mux4~38_combout\)))) # (!\inst2|auxA\(8) & ((\inst2|Mux4~39_combout\) # ((!\inst2|auxA\(9) & \inst2|Mux4~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|auxA\(9),
	datac => \inst2|Mux4~38_combout\,
	datad => \inst2|Mux4~39_combout\,
	combout => \inst2|Mux4~40_combout\);

-- Location: LCCOMB_X37_Y33_N22
\inst2|Mux4~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~58_combout\ = (\inst2|auxA\(6) & ((\inst2|Mux4~52_combout\ & (\inst2|Mux4~57_combout\)) # (!\inst2|Mux4~52_combout\ & ((\inst2|Mux4~40_combout\))))) # (!\inst2|auxA\(6) & (((\inst2|Mux4~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|Mux4~57_combout\,
	datac => \inst2|Mux4~52_combout\,
	datad => \inst2|Mux4~40_combout\,
	combout => \inst2|Mux4~58_combout\);

-- Location: LCCOMB_X37_Y34_N24
\inst2|Mux4~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~18_combout\ = (\inst2|auxA\(7) & ((\inst2|Mux2~10_combout\) # (!\inst2|auxA\(8)))) # (!\inst2|auxA\(7) & (\inst2|auxA\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datac => \inst2|auxA\(8),
	datad => \inst2|Mux2~10_combout\,
	combout => \inst2|Mux4~18_combout\);

-- Location: LCCOMB_X37_Y33_N24
\inst2|Mux4~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~24_combout\ = (\inst2|auxA\(4) & ((\inst2|auxA\(7)) # (!\inst2|Mux1~4_combout\))) # (!\inst2|auxA\(4) & (!\inst2|auxA\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|auxA\(4),
	datac => \inst2|auxA\(7),
	datad => \inst2|Mux1~4_combout\,
	combout => \inst2|Mux4~24_combout\);

-- Location: LCCOMB_X39_Y33_N16
\inst2|Mux4~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~26_combout\ = (\inst2|auxA\(2) & (\inst2|auxA\(3) & ((\inst2|auxA\(1)) # (\inst2|auxA\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(1),
	datab => \inst2|auxA\(2),
	datac => \inst2|auxA\(8),
	datad => \inst2|auxA\(3),
	combout => \inst2|Mux4~26_combout\);

-- Location: LCCOMB_X37_Y33_N10
\inst2|Mux4~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~27_combout\ = (\inst2|auxA\(7) & (((\inst2|Mux4~25_combout\)))) # (!\inst2|auxA\(7) & ((\inst2|auxA\(4)) # ((\inst2|Mux4~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(4),
	datac => \inst2|Mux4~25_combout\,
	datad => \inst2|Mux4~26_combout\,
	combout => \inst2|Mux4~27_combout\);

-- Location: LCCOMB_X37_Y33_N12
\inst2|Mux4~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~28_combout\ = (\inst2|auxA\(5) & (((\inst2|auxA\(8))))) # (!\inst2|auxA\(5) & ((\inst2|auxA\(7) & (!\inst2|auxA\(8) & \inst2|Mux4~27_combout\)) # (!\inst2|auxA\(7) & ((!\inst2|Mux4~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(5),
	datac => \inst2|auxA\(8),
	datad => \inst2|Mux4~27_combout\,
	combout => \inst2|Mux4~28_combout\);

-- Location: LCCOMB_X37_Y33_N26
\inst2|Mux4~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~29_combout\ = (\inst2|auxA\(5) & ((\inst2|Mux4~28_combout\ & (\inst2|Mux4~8_combout\)) # (!\inst2|Mux4~28_combout\ & ((!\inst2|Mux4~24_combout\))))) # (!\inst2|auxA\(5) & (((\inst2|Mux4~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux4~8_combout\,
	datab => \inst2|Mux4~24_combout\,
	datac => \inst2|auxA\(5),
	datad => \inst2|Mux4~28_combout\,
	combout => \inst2|Mux4~29_combout\);

-- Location: LCCOMB_X36_Y33_N28
\inst2|Mux4~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~31_combout\ = (\inst2|auxA\(8) & ((!\inst2|Mux2~9_combout\) # (!\inst2|auxA\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|auxA\(8),
	datac => \inst2|auxA\(4),
	datad => \inst2|Mux2~9_combout\,
	combout => \inst2|Mux4~31_combout\);

-- Location: LCCOMB_X37_Y35_N18
\inst2|Mux4~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~33_combout\ = (!\inst2|auxA\(7) & ((\inst2|auxA\(4)) # (\inst2|Mux4~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|auxA\(7),
	datac => \inst2|auxA\(4),
	datad => \inst2|Mux4~32_combout\,
	combout => \inst2|Mux4~33_combout\);

-- Location: LCCOMB_X36_Y33_N18
\inst2|Mux4~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~30_combout\ = (\inst2|auxA\(4) & ((\inst2|Mux2~2_combout\ & (\inst2|auxA\(8))) # (!\inst2|Mux2~2_combout\ & ((\inst2|auxA\(7)))))) # (!\inst2|auxA\(4) & (((\inst2|auxA\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|auxA\(4),
	datac => \inst2|auxA\(7),
	datad => \inst2|Mux2~2_combout\,
	combout => \inst2|Mux4~30_combout\);

-- Location: LCCOMB_X36_Y33_N22
\inst2|Mux4~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~34_combout\ = (\inst2|auxA\(5) & ((\inst2|Mux4~31_combout\) # ((\inst2|Mux4~33_combout\)))) # (!\inst2|auxA\(5) & (((\inst2|Mux4~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(5),
	datab => \inst2|Mux4~31_combout\,
	datac => \inst2|Mux4~33_combout\,
	datad => \inst2|Mux4~30_combout\,
	combout => \inst2|Mux4~34_combout\);

-- Location: LCCOMB_X37_Y33_N0
\inst2|Mux4~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~35_combout\ = (\inst2|auxA\(6) & ((\inst2|auxA\(9)) # ((\inst2|Mux4~29_combout\)))) # (!\inst2|auxA\(6) & (!\inst2|auxA\(9) & ((\inst2|Mux4~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(9),
	datac => \inst2|Mux4~29_combout\,
	datad => \inst2|Mux4~34_combout\,
	combout => \inst2|Mux4~35_combout\);

-- Location: LCCOMB_X37_Y33_N14
\inst2|Mux4~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~36_combout\ = (\inst2|auxA\(9) & ((\inst2|Mux4~35_combout\ & (\inst2|Mux4~61_combout\)) # (!\inst2|Mux4~35_combout\ & ((!\inst2|Mux4~18_combout\))))) # (!\inst2|auxA\(9) & (((\inst2|Mux4~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux4~61_combout\,
	datab => \inst2|auxA\(9),
	datac => \inst2|Mux4~18_combout\,
	datad => \inst2|Mux4~35_combout\,
	combout => \inst2|Mux4~36_combout\);

-- Location: LCCOMB_X37_Y32_N10
\inst2|Mux6~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~10_combout\ = (\inst2|auxA\(7) & !\inst2|auxA\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datac => \inst2|auxA\(8),
	combout => \inst2|Mux6~10_combout\);

-- Location: LCCOMB_X35_Y33_N16
\inst2|Mux2~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux2~5_combout\ = (\inst2|auxA\(5) & ((\inst2|auxA\(3)) # ((\inst2|auxA\(2)) # (\inst2|auxA\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(3),
	datab => \inst2|auxA\(2),
	datac => \inst2|auxA\(4),
	datad => \inst2|auxA\(5),
	combout => \inst2|Mux2~5_combout\);

-- Location: LCCOMB_X35_Y33_N10
\inst2|Mux4~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~21_combout\ = (\inst2|auxA\(3) & (\inst2|auxA\(4) & ((\inst2|auxA\(2)) # (\inst2|auxA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(2),
	datab => \inst2|auxA\(1),
	datac => \inst2|auxA\(3),
	datad => \inst2|auxA\(4),
	combout => \inst2|Mux4~21_combout\);

-- Location: LCCOMB_X36_Y34_N18
\inst2|Mux4~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~63_combout\ = (\inst2|auxA\(8) & ((\inst2|auxA\(5) & (\inst2|auxA\(7))) # (!\inst2|auxA\(5) & ((\inst2|Mux4~21_combout\) # (!\inst2|auxA\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(5),
	datab => \inst2|auxA\(7),
	datac => \inst2|auxA\(8),
	datad => \inst2|Mux4~21_combout\,
	combout => \inst2|Mux4~63_combout\);

-- Location: LCCOMB_X37_Y34_N14
\inst2|Mux4~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~22_combout\ = (\inst2|Mux4~62_combout\) # ((\inst2|Mux4~63_combout\) # ((\inst2|Mux6~10_combout\ & \inst2|Mux2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux4~62_combout\,
	datab => \inst2|Mux6~10_combout\,
	datac => \inst2|Mux2~5_combout\,
	datad => \inst2|Mux4~63_combout\,
	combout => \inst2|Mux4~22_combout\);

-- Location: LCCOMB_X34_Y37_N24
\inst2|Mux4~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~17_combout\ = (\inst2|auxA\(5)) # ((\inst2|auxA\(8)) # ((\inst2|auxA\(4) & \inst2|auxA\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(4),
	datab => \inst2|auxA\(3),
	datac => \inst2|auxA\(5),
	datad => \inst2|auxA\(8),
	combout => \inst2|Mux4~17_combout\);

-- Location: LCCOMB_X34_Y37_N16
\inst2|Mux4~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~61_combout\ = (\inst2|auxA\(7) & (\inst2|auxA\(8))) # (!\inst2|auxA\(7) & ((!\inst2|Mux4~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datac => \inst2|auxA\(7),
	datad => \inst2|Mux4~17_combout\,
	combout => \inst2|Mux4~61_combout\);

-- Location: LCCOMB_X37_Y34_N22
\inst2|Mux4~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~19_combout\ = (\inst2|auxA\(9) & (\inst2|auxA\(6))) # (!\inst2|auxA\(9) & ((\inst2|auxA\(6) & (!\inst2|Mux4~61_combout\)) # (!\inst2|auxA\(6) & ((\inst2|Mux4~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(9),
	datab => \inst2|auxA\(6),
	datac => \inst2|Mux4~61_combout\,
	datad => \inst2|Mux4~18_combout\,
	combout => \inst2|Mux4~19_combout\);

-- Location: LCCOMB_X35_Y37_N4
\inst2|Mux4~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~9_combout\ = ((!\inst2|Mux1~4_combout\) # (!\inst2|auxA\(4))) # (!\inst2|auxA\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(4),
	datad => \inst2|Mux1~4_combout\,
	combout => \inst2|Mux4~9_combout\);

-- Location: LCCOMB_X35_Y37_N24
\inst2|Mux4~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~12_combout\ = (\inst2|auxA\(2)) # ((\inst2|auxA\(7) & ((\inst2|auxA\(0)) # (\inst2|auxA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(2),
	datab => \inst2|auxA\(0),
	datac => \inst2|auxA\(1),
	datad => \inst2|auxA\(7),
	combout => \inst2|Mux4~12_combout\);

-- Location: LCCOMB_X35_Y37_N8
\inst2|Mux4~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~60_combout\ = (\inst2|auxA\(4)) # ((\inst2|auxA\(3)) # (\inst2|Mux4~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|auxA\(4),
	datac => \inst2|auxA\(3),
	datad => \inst2|Mux4~12_combout\,
	combout => \inst2|Mux4~60_combout\);

-- Location: LCCOMB_X35_Y37_N2
\inst2|Mux4~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~11_combout\ = (\inst2|auxA\(7) & ((\inst2|auxA\(4)) # ((\inst2|Mux4~10_combout\)))) # (!\inst2|auxA\(7) & (((\inst2|Mux3~8_combout\)) # (!\inst2|auxA\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(4),
	datac => \inst2|Mux3~8_combout\,
	datad => \inst2|Mux4~10_combout\,
	combout => \inst2|Mux4~11_combout\);

-- Location: LCCOMB_X35_Y37_N14
\inst2|Mux4~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~13_combout\ = (\inst2|auxA\(5) & (\inst2|auxA\(8))) # (!\inst2|auxA\(5) & ((\inst2|auxA\(8) & ((\inst2|Mux4~11_combout\))) # (!\inst2|auxA\(8) & (\inst2|Mux4~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(5),
	datab => \inst2|auxA\(8),
	datac => \inst2|Mux4~60_combout\,
	datad => \inst2|Mux4~11_combout\,
	combout => \inst2|Mux4~13_combout\);

-- Location: LCCOMB_X35_Y37_N12
\inst2|Mux4~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~15_combout\ = (\inst2|auxA\(7) & (((!\inst2|Mux3~29_combout\)) # (!\inst2|auxA\(4)))) # (!\inst2|auxA\(7) & (\inst2|auxA\(4) & (\inst2|Mux4~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(4),
	datac => \inst2|Mux4~14_combout\,
	datad => \inst2|Mux3~29_combout\,
	combout => \inst2|Mux4~15_combout\);

-- Location: LCCOMB_X35_Y37_N18
\inst2|Mux4~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~16_combout\ = (\inst2|auxA\(5) & ((\inst2|Mux4~13_combout\ & ((\inst2|Mux4~15_combout\))) # (!\inst2|Mux4~13_combout\ & (\inst2|Mux4~9_combout\)))) # (!\inst2|auxA\(5) & (((\inst2|Mux4~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(5),
	datab => \inst2|Mux4~9_combout\,
	datac => \inst2|Mux4~13_combout\,
	datad => \inst2|Mux4~15_combout\,
	combout => \inst2|Mux4~16_combout\);

-- Location: LCCOMB_X37_Y34_N20
\inst2|Mux4~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~23_combout\ = (\inst2|auxA\(9) & ((\inst2|Mux4~19_combout\ & (\inst2|Mux4~22_combout\)) # (!\inst2|Mux4~19_combout\ & ((\inst2|Mux4~16_combout\))))) # (!\inst2|auxA\(9) & (((\inst2|Mux4~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(9),
	datab => \inst2|Mux4~22_combout\,
	datac => \inst2|Mux4~19_combout\,
	datad => \inst2|Mux4~16_combout\,
	combout => \inst2|Mux4~23_combout\);

-- Location: LCCOMB_X37_Y33_N16
\inst2|Mux4~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~37_combout\ = (!\inst2|auxA\(10) & ((\inst2|auxA\(11) & ((\inst2|Mux4~23_combout\))) # (!\inst2|auxA\(11) & (\inst2|Mux4~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(10),
	datab => \inst2|auxA\(11),
	datac => \inst2|Mux4~36_combout\,
	datad => \inst2|Mux4~23_combout\,
	combout => \inst2|Mux4~37_combout\);

-- Location: LCCOMB_X37_Y33_N20
\inst2|Mux4~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~59_combout\ = (\inst2|Mux4~37_combout\) # ((\inst2|auxA\(10) & (!\inst2|auxA\(11) & \inst2|Mux4~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(10),
	datab => \inst2|auxA\(11),
	datac => \inst2|Mux4~58_combout\,
	datad => \inst2|Mux4~37_combout\,
	combout => \inst2|Mux4~59_combout\);

-- Location: LCCOMB_X34_Y33_N2
\inst2|Mux5~90\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~90_combout\ = (\inst2|auxA\(7) & ((\inst2|auxA\(4)) # ((\inst2|Mux2~2_combout\)))) # (!\inst2|auxA\(7) & (!\inst2|auxA\(4) & (!\inst2|auxA\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(4),
	datac => \inst2|auxA\(3),
	datad => \inst2|Mux2~2_combout\,
	combout => \inst2|Mux5~90_combout\);

-- Location: LCCOMB_X34_Y33_N26
\inst2|Mux5~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~73_combout\ = (\inst2|auxA\(4) & ((\inst2|Mux5~6_combout\) # ((!\inst2|auxA\(7))))) # (!\inst2|auxA\(4) & (((\inst2|Mux4~32_combout\ & \inst2|auxA\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux5~6_combout\,
	datab => \inst2|auxA\(4),
	datac => \inst2|Mux4~32_combout\,
	datad => \inst2|auxA\(7),
	combout => \inst2|Mux5~73_combout\);

-- Location: LCCOMB_X34_Y33_N22
\inst2|Mux5~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~69_combout\ = (\inst2|auxA\(4) & (((\inst2|Mux3~8_combout\ & !\inst2|auxA\(7))))) # (!\inst2|auxA\(4) & (((!\inst2|auxA\(7))) # (!\inst2|Mux4~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux4~10_combout\,
	datab => \inst2|auxA\(4),
	datac => \inst2|Mux3~8_combout\,
	datad => \inst2|auxA\(7),
	combout => \inst2|Mux5~69_combout\);

-- Location: LCCOMB_X34_Y33_N16
\inst2|Mux5~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~70_combout\ = (!\inst2|auxA\(4) & ((\inst2|auxA\(7) & (\inst2|Mux3~8_combout\)) # (!\inst2|auxA\(7) & ((\inst2|Mux4~49_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux3~8_combout\,
	datab => \inst2|auxA\(7),
	datac => \inst2|auxA\(4),
	datad => \inst2|Mux4~49_combout\,
	combout => \inst2|Mux5~70_combout\);

-- Location: LCCOMB_X34_Y33_N18
\inst2|Mux5~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~71_combout\ = (\inst2|Mux5~70_combout\) # ((\inst2|auxA\(7) & (\inst2|auxA\(4) & \inst2|Mux4~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(4),
	datac => \inst2|Mux4~10_combout\,
	datad => \inst2|Mux5~70_combout\,
	combout => \inst2|Mux5~71_combout\);

-- Location: LCCOMB_X34_Y33_N12
\inst2|Mux5~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~72_combout\ = (\inst2|auxA\(6) & (\inst2|auxA\(8))) # (!\inst2|auxA\(6) & ((\inst2|auxA\(8) & (\inst2|Mux5~69_combout\)) # (!\inst2|auxA\(8) & ((\inst2|Mux5~71_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(8),
	datac => \inst2|Mux5~69_combout\,
	datad => \inst2|Mux5~71_combout\,
	combout => \inst2|Mux5~72_combout\);

-- Location: LCCOMB_X34_Y33_N24
\inst2|Mux5~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~74_combout\ = (\inst2|auxA\(6) & ((\inst2|Mux5~72_combout\ & ((\inst2|Mux5~73_combout\))) # (!\inst2|Mux5~72_combout\ & (\inst2|Mux5~90_combout\)))) # (!\inst2|auxA\(6) & (((\inst2|Mux5~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|Mux5~90_combout\,
	datac => \inst2|Mux5~73_combout\,
	datad => \inst2|Mux5~72_combout\,
	combout => \inst2|Mux5~74_combout\);

-- Location: LCCOMB_X36_Y35_N10
\inst2|Mux5~84\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~84_combout\ = (\inst2|auxA\(8) & ((\inst2|auxA\(4)) # ((\inst2|Mux2~2_combout\)))) # (!\inst2|auxA\(8) & (\inst2|auxA\(4) & (\inst2|Mux4~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|auxA\(4),
	datac => \inst2|Mux4~14_combout\,
	datad => \inst2|Mux2~2_combout\,
	combout => \inst2|Mux5~84_combout\);

-- Location: LCCOMB_X36_Y35_N28
\inst2|Mux5~85\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~85_combout\ = (\inst2|Mux5~84_combout\) # ((!\inst2|auxA\(8) & (!\inst2|auxA\(4) & \inst2|Mux4~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|auxA\(4),
	datac => \inst2|Mux4~49_combout\,
	datad => \inst2|Mux5~84_combout\,
	combout => \inst2|Mux5~85_combout\);

-- Location: LCCOMB_X37_Y35_N2
\inst2|Mux5~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~78_combout\ = (\inst2|auxA\(0) & ((\inst2|auxA\(2)) # ((\inst2|auxA\(8) & \inst2|auxA\(1))))) # (!\inst2|auxA\(0) & (\inst2|auxA\(2) & ((\inst2|auxA\(8)) # (\inst2|auxA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(0),
	datab => \inst2|auxA\(2),
	datac => \inst2|auxA\(8),
	datad => \inst2|auxA\(1),
	combout => \inst2|Mux5~78_combout\);

-- Location: LCCOMB_X36_Y35_N22
\inst2|Mux5~79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~79_combout\ = ((!\inst2|auxA\(3) & !\inst2|Mux5~78_combout\)) # (!\inst2|auxA\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(4),
	datab => \inst2|auxA\(3),
	datad => \inst2|Mux5~78_combout\,
	combout => \inst2|Mux5~79_combout\);

-- Location: LCCOMB_X37_Y37_N26
\inst2|Mux5~81\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~81_combout\ = (\inst2|auxA\(8) & ((\inst2|auxA\(2)) # ((\inst2|auxA\(1) & \inst2|auxA\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(1),
	datab => \inst2|auxA\(0),
	datac => \inst2|auxA\(2),
	datad => \inst2|auxA\(8),
	combout => \inst2|Mux5~81_combout\);

-- Location: LCCOMB_X37_Y37_N12
\inst2|Mux5~80\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~80_combout\ = (\inst2|auxA\(1) & (\inst2|auxA\(2) & ((\inst2|auxA\(0)) # (\inst2|auxA\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(1),
	datab => \inst2|auxA\(0),
	datac => \inst2|auxA\(2),
	datad => \inst2|auxA\(8),
	combout => \inst2|Mux5~80_combout\);

-- Location: LCCOMB_X37_Y37_N8
\inst2|Mux5~82\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~82_combout\ = (\inst2|auxA\(4) & (((!\inst2|Mux5~81_combout\)) # (!\inst2|auxA\(3)))) # (!\inst2|auxA\(4) & ((\inst2|auxA\(3)) # ((\inst2|Mux5~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(4),
	datab => \inst2|auxA\(3),
	datac => \inst2|Mux5~81_combout\,
	datad => \inst2|Mux5~80_combout\,
	combout => \inst2|Mux5~82_combout\);

-- Location: LCCOMB_X36_Y35_N8
\inst2|Mux5~83\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~83_combout\ = (\inst2|auxA\(6) & (\inst2|auxA\(7))) # (!\inst2|auxA\(6) & ((\inst2|auxA\(7) & (\inst2|Mux5~79_combout\)) # (!\inst2|auxA\(7) & ((\inst2|Mux5~82_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(7),
	datac => \inst2|Mux5~79_combout\,
	datad => \inst2|Mux5~82_combout\,
	combout => \inst2|Mux5~83_combout\);

-- Location: LCCOMB_X36_Y35_N2
\inst2|Mux5~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~76_combout\ = (\inst2|auxA\(8) & (\inst2|auxA\(4) & (\inst2|Mux2~9_combout\))) # (!\inst2|auxA\(8) & ((\inst2|auxA\(4)) # ((\inst2|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|auxA\(4),
	datac => \inst2|Mux2~9_combout\,
	datad => \inst2|Mux1~4_combout\,
	combout => \inst2|Mux5~76_combout\);

-- Location: LCCOMB_X36_Y35_N16
\inst2|Mux5~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~77_combout\ = (\inst2|Mux5~76_combout\) # ((\inst2|auxA\(8) & (!\inst2|auxA\(4) & \inst2|Mux4~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|auxA\(4),
	datac => \inst2|Mux4~49_combout\,
	datad => \inst2|Mux5~76_combout\,
	combout => \inst2|Mux5~77_combout\);

-- Location: LCCOMB_X36_Y35_N30
\inst2|Mux5~86\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~86_combout\ = (\inst2|auxA\(6) & ((\inst2|Mux5~83_combout\ & (\inst2|Mux5~85_combout\)) # (!\inst2|Mux5~83_combout\ & ((\inst2|Mux5~77_combout\))))) # (!\inst2|auxA\(6) & (((\inst2|Mux5~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|Mux5~85_combout\,
	datac => \inst2|Mux5~83_combout\,
	datad => \inst2|Mux5~77_combout\,
	combout => \inst2|Mux5~86_combout\);

-- Location: LCCOMB_X35_Y36_N8
\inst2|Mux5~87\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~87_combout\ = (\inst2|Mux5~75_combout\ & (((\inst2|Mux5~86_combout\)) # (!\inst2|auxA\(9)))) # (!\inst2|Mux5~75_combout\ & (\inst2|auxA\(9) & (\inst2|Mux5~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux5~75_combout\,
	datab => \inst2|auxA\(9),
	datac => \inst2|Mux5~74_combout\,
	datad => \inst2|Mux5~86_combout\,
	combout => \inst2|Mux5~87_combout\);

-- Location: LCCOMB_X36_Y33_N16
\inst2|Mux5~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~40_combout\ = (\inst2|auxA\(2) & ((\inst2|auxA\(0)) # ((\inst2|auxA\(1)) # (!\inst2|auxA\(6))))) # (!\inst2|auxA\(2) & (!\inst2|auxA\(6) & ((\inst2|auxA\(0)) # (\inst2|auxA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(0),
	datab => \inst2|auxA\(2),
	datac => \inst2|auxA\(6),
	datad => \inst2|auxA\(1),
	combout => \inst2|Mux5~40_combout\);

-- Location: LCCOMB_X36_Y33_N14
\inst2|Mux5~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~41_combout\ = (\inst2|auxA\(3) & (\inst2|auxA\(4) & \inst2|Mux5~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|auxA\(3),
	datac => \inst2|auxA\(4),
	datad => \inst2|Mux5~40_combout\,
	combout => \inst2|Mux5~41_combout\);

-- Location: LCCOMB_X36_Y33_N26
\inst2|Mux5~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~35_combout\ = (\inst2|auxA\(4) & (\inst2|Mux4~49_combout\ & (!\inst2|auxA\(6)))) # (!\inst2|auxA\(4) & (((!\inst2|Mux1~4_combout\) # (!\inst2|auxA\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux4~49_combout\,
	datab => \inst2|auxA\(4),
	datac => \inst2|auxA\(6),
	datad => \inst2|Mux1~4_combout\,
	combout => \inst2|Mux5~35_combout\);

-- Location: LCCOMB_X36_Y33_N20
\inst2|Mux5~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~36_combout\ = (\inst2|auxA\(4) & (\inst2|Mux3~29_combout\ & (!\inst2|auxA\(6)))) # (!\inst2|auxA\(4) & (((\inst2|auxA\(6) & !\inst2|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(4),
	datab => \inst2|Mux3~29_combout\,
	datac => \inst2|auxA\(6),
	datad => \inst2|Mux2~2_combout\,
	combout => \inst2|Mux5~36_combout\);

-- Location: LCCOMB_X36_Y35_N14
\inst2|Mux5~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~16_combout\ = (\inst2|auxA\(3)) # ((\inst2|auxA\(2) & \inst2|auxA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|auxA\(2),
	datac => \inst2|auxA\(1),
	datad => \inst2|auxA\(3),
	combout => \inst2|Mux5~16_combout\);

-- Location: LCCOMB_X36_Y33_N6
\inst2|Mux5~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~37_combout\ = (\inst2|auxA\(4) & (((\inst2|auxA\(6))))) # (!\inst2|auxA\(4) & ((\inst2|auxA\(6) & (!\inst2|Mux4~49_combout\)) # (!\inst2|auxA\(6) & ((!\inst2|Mux5~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux4~49_combout\,
	datab => \inst2|auxA\(4),
	datac => \inst2|auxA\(6),
	datad => \inst2|Mux5~16_combout\,
	combout => \inst2|Mux5~37_combout\);

-- Location: LCCOMB_X36_Y33_N12
\inst2|Mux5~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~38_combout\ = (\inst2|auxA\(4) & ((\inst2|Mux5~37_combout\ & (!\inst2|Mux2~9_combout\)) # (!\inst2|Mux5~37_combout\ & ((\inst2|Mux4~14_combout\))))) # (!\inst2|auxA\(4) & (((\inst2|Mux5~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(4),
	datab => \inst2|Mux2~9_combout\,
	datac => \inst2|Mux4~14_combout\,
	datad => \inst2|Mux5~37_combout\,
	combout => \inst2|Mux5~38_combout\);

-- Location: LCCOMB_X36_Y33_N2
\inst2|Mux5~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~39_combout\ = (\inst2|auxA\(9) & (((\inst2|auxA\(7))))) # (!\inst2|auxA\(9) & ((\inst2|auxA\(7) & (\inst2|Mux5~36_combout\)) # (!\inst2|auxA\(7) & ((\inst2|Mux5~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(9),
	datab => \inst2|Mux5~36_combout\,
	datac => \inst2|auxA\(7),
	datad => \inst2|Mux5~38_combout\,
	combout => \inst2|Mux5~39_combout\);

-- Location: LCCOMB_X36_Y33_N0
\inst2|Mux5~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~42_combout\ = (\inst2|auxA\(9) & ((\inst2|Mux5~39_combout\ & (\inst2|Mux5~41_combout\)) # (!\inst2|Mux5~39_combout\ & ((\inst2|Mux5~35_combout\))))) # (!\inst2|auxA\(9) & (((\inst2|Mux5~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(9),
	datab => \inst2|Mux5~41_combout\,
	datac => \inst2|Mux5~35_combout\,
	datad => \inst2|Mux5~39_combout\,
	combout => \inst2|Mux5~42_combout\);

-- Location: LCCOMB_X37_Y35_N22
\inst2|Mux5~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~6_combout\ = ((!\inst2|auxA\(2) & !\inst2|auxA\(1))) # (!\inst2|auxA\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|auxA\(2),
	datac => \inst2|auxA\(3),
	datad => \inst2|auxA\(1),
	combout => \inst2|Mux5~6_combout\);

-- Location: LCCOMB_X35_Y37_N0
\inst2|Mux5~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~7_combout\ = (\inst2|auxA\(6) & ((\inst2|auxA\(4)) # ((\inst2|Mux3~8_combout\)))) # (!\inst2|auxA\(6) & (!\inst2|auxA\(4) & (\inst2|Mux4~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(4),
	datac => \inst2|Mux4~32_combout\,
	datad => \inst2|Mux3~8_combout\,
	combout => \inst2|Mux5~7_combout\);

-- Location: LCCOMB_X35_Y37_N22
\inst2|Mux5~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~8_combout\ = (\inst2|auxA\(4) & ((\inst2|Mux5~7_combout\ & (\inst2|Mux1~4_combout\)) # (!\inst2|Mux5~7_combout\ & ((\inst2|Mux5~6_combout\))))) # (!\inst2|auxA\(4) & (((\inst2|Mux5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(4),
	datab => \inst2|Mux1~4_combout\,
	datac => \inst2|Mux5~6_combout\,
	datad => \inst2|Mux5~7_combout\,
	combout => \inst2|Mux5~8_combout\);

-- Location: LCCOMB_X37_Y34_N10
\inst2|Mux5~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~11_combout\ = (\inst2|auxA\(2) & ((\inst2|auxA\(0) & ((\inst2|auxA\(1)) # (\inst2|auxA\(6)))) # (!\inst2|auxA\(0) & (\inst2|auxA\(1) & \inst2|auxA\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(0),
	datab => \inst2|auxA\(1),
	datac => \inst2|auxA\(6),
	datad => \inst2|auxA\(2),
	combout => \inst2|Mux5~11_combout\);

-- Location: LCCOMB_X35_Y37_N26
\inst2|Mux5~89\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~89_combout\ = (\inst2|auxA\(4)) # ((\inst2|auxA\(3)) # (\inst2|Mux5~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|auxA\(4),
	datac => \inst2|auxA\(3),
	datad => \inst2|Mux5~11_combout\,
	combout => \inst2|Mux5~89_combout\);

-- Location: LCCOMB_X34_Y35_N16
\inst2|Mux5~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~9_combout\ = (\inst2|auxA\(4) & ((\inst2|auxA\(6) & (!\inst2|Mux4~14_combout\)) # (!\inst2|auxA\(6) & ((\inst2|Mux1~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(4),
	datab => \inst2|auxA\(6),
	datac => \inst2|Mux4~14_combout\,
	datad => \inst2|Mux1~4_combout\,
	combout => \inst2|Mux5~9_combout\);

-- Location: LCCOMB_X35_Y37_N28
\inst2|Mux5~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~10_combout\ = (\inst2|Mux5~9_combout\) # ((!\inst2|Mux4~49_combout\ & (!\inst2|auxA\(4) & \inst2|auxA\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux4~49_combout\,
	datab => \inst2|auxA\(4),
	datac => \inst2|auxA\(6),
	datad => \inst2|Mux5~9_combout\,
	combout => \inst2|Mux5~10_combout\);

-- Location: LCCOMB_X35_Y37_N6
\inst2|Mux5~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~12_combout\ = (\inst2|auxA\(7) & ((\inst2|auxA\(9)) # ((\inst2|Mux5~10_combout\)))) # (!\inst2|auxA\(7) & (!\inst2|auxA\(9) & (!\inst2|Mux5~89_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(9),
	datac => \inst2|Mux5~89_combout\,
	datad => \inst2|Mux5~10_combout\,
	combout => \inst2|Mux5~12_combout\);

-- Location: LCCOMB_X35_Y37_N16
\inst2|Mux5~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~14_combout\ = (\inst2|auxA\(9) & ((\inst2|Mux5~12_combout\ & (\inst2|Mux5~13_combout\)) # (!\inst2|Mux5~12_combout\ & ((\inst2|Mux5~8_combout\))))) # (!\inst2|auxA\(9) & (((\inst2|Mux5~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux5~13_combout\,
	datab => \inst2|auxA\(9),
	datac => \inst2|Mux5~8_combout\,
	datad => \inst2|Mux5~12_combout\,
	combout => \inst2|Mux5~14_combout\);

-- Location: LCCOMB_X35_Y37_N30
\inst2|Mux5~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~21_combout\ = (\inst2|auxA\(3) & ((\inst2|auxA\(2)) # ((\inst2|auxA\(1) & \inst2|auxA\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(2),
	datab => \inst2|auxA\(3),
	datac => \inst2|auxA\(1),
	datad => \inst2|auxA\(6),
	combout => \inst2|Mux5~21_combout\);

-- Location: LCCOMB_X35_Y36_N0
\inst2|Mux5~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~22_combout\ = (!\inst2|Mux5~21_combout\) # (!\inst2|auxA\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(4),
	datac => \inst2|Mux5~21_combout\,
	combout => \inst2|Mux5~22_combout\);

-- Location: LCCOMB_X35_Y36_N20
\inst2|Mux5~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~15_combout\ = (\inst2|auxA\(6) & ((\inst2|auxA\(4)) # ((\inst2|Mux4~10_combout\)))) # (!\inst2|auxA\(6) & (\inst2|auxA\(4) & ((\inst2|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(4),
	datac => \inst2|Mux4~10_combout\,
	datad => \inst2|Mux2~2_combout\,
	combout => \inst2|Mux5~15_combout\);

-- Location: LCCOMB_X35_Y36_N30
\inst2|Mux5~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~17_combout\ = (\inst2|Mux5~15_combout\) # ((!\inst2|auxA\(6) & (!\inst2|Mux5~16_combout\ & !\inst2|auxA\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|Mux5~16_combout\,
	datac => \inst2|auxA\(4),
	datad => \inst2|Mux5~15_combout\,
	combout => \inst2|Mux5~17_combout\);

-- Location: LCCOMB_X37_Y35_N0
\inst2|Mux5~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~18_combout\ = (\inst2|auxA\(4) & (((!\inst2|Mux5~6_combout\)))) # (!\inst2|auxA\(4) & (\inst2|auxA\(6) & ((!\inst2|Mux4~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(4),
	datab => \inst2|auxA\(6),
	datac => \inst2|Mux5~6_combout\,
	datad => \inst2|Mux4~32_combout\,
	combout => \inst2|Mux5~18_combout\);

-- Location: LCCOMB_X35_Y36_N24
\inst2|Mux5~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~19_combout\ = (\inst2|Mux5~18_combout\) # ((!\inst2|auxA\(6) & ((\inst2|auxA\(4)) # (\inst2|Mux4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(4),
	datac => \inst2|Mux4~10_combout\,
	datad => \inst2|Mux5~18_combout\,
	combout => \inst2|Mux5~19_combout\);

-- Location: LCCOMB_X36_Y37_N20
\inst2|Mux5~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~13_combout\ = (\inst2|auxA\(4) & ((\inst2|auxA\(6)) # (\inst2|Mux3~8_combout\))) # (!\inst2|auxA\(4) & (!\inst2|auxA\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|auxA\(4),
	datac => \inst2|auxA\(6),
	datad => \inst2|Mux3~8_combout\,
	combout => \inst2|Mux5~13_combout\);

-- Location: LCCOMB_X35_Y36_N6
\inst2|Mux5~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~20_combout\ = (\inst2|auxA\(9) & (((\inst2|auxA\(7))))) # (!\inst2|auxA\(9) & ((\inst2|auxA\(7) & (\inst2|Mux5~19_combout\)) # (!\inst2|auxA\(7) & ((!\inst2|Mux5~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(9),
	datab => \inst2|Mux5~19_combout\,
	datac => \inst2|auxA\(7),
	datad => \inst2|Mux5~13_combout\,
	combout => \inst2|Mux5~20_combout\);

-- Location: LCCOMB_X35_Y36_N14
\inst2|Mux5~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~23_combout\ = (\inst2|auxA\(9) & ((\inst2|Mux5~20_combout\ & (\inst2|Mux5~22_combout\)) # (!\inst2|Mux5~20_combout\ & ((\inst2|Mux5~17_combout\))))) # (!\inst2|auxA\(9) & (((\inst2|Mux5~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(9),
	datab => \inst2|Mux5~22_combout\,
	datac => \inst2|Mux5~17_combout\,
	datad => \inst2|Mux5~20_combout\,
	combout => \inst2|Mux5~23_combout\);

-- Location: LCCOMB_X35_Y35_N30
\inst2|Mux5~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~29_combout\ = (\inst2|auxA\(4)) # ((\inst2|auxA\(3)) # ((!\inst2|auxA\(6) & \inst2|auxA\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(2),
	datac => \inst2|auxA\(4),
	datad => \inst2|auxA\(3),
	combout => \inst2|Mux5~29_combout\);

-- Location: LCCOMB_X35_Y35_N14
\inst2|Mux5~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~27_combout\ = (\inst2|auxA\(6) & (((!\inst2|Mux2~2_combout\ & !\inst2|auxA\(4))))) # (!\inst2|auxA\(6) & (!\inst2|Mux4~10_combout\ & ((\inst2|auxA\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux4~10_combout\,
	datab => \inst2|auxA\(6),
	datac => \inst2|Mux2~2_combout\,
	datad => \inst2|auxA\(4),
	combout => \inst2|Mux5~27_combout\);

-- Location: LCCOMB_X35_Y35_N28
\inst2|Mux5~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~28_combout\ = (\inst2|Mux5~27_combout\) # ((!\inst2|auxA\(4) & (!\inst2|auxA\(6) & !\inst2|Mux3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(4),
	datab => \inst2|auxA\(6),
	datac => \inst2|Mux5~27_combout\,
	datad => \inst2|Mux3~8_combout\,
	combout => \inst2|Mux5~28_combout\);

-- Location: LCCOMB_X35_Y35_N4
\inst2|Mux5~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~30_combout\ = (\inst2|auxA\(7) & ((\inst2|auxA\(9)) # ((\inst2|Mux5~28_combout\)))) # (!\inst2|auxA\(7) & (!\inst2|auxA\(9) & (\inst2|Mux5~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(9),
	datac => \inst2|Mux5~29_combout\,
	datad => \inst2|Mux5~28_combout\,
	combout => \inst2|Mux5~30_combout\);

-- Location: LCCOMB_X38_Y38_N4
\inst2|Mux6~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~11_combout\ = (\inst2|auxA\(2) & \inst2|auxA\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|auxA\(2),
	datad => \inst2|auxA\(1),
	combout => \inst2|Mux6~11_combout\);

-- Location: LCCOMB_X36_Y38_N28
\inst2|Mux5~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~31_combout\ = (\inst2|auxA\(4) & (((\inst2|auxA\(6))))) # (!\inst2|auxA\(4) & ((\inst2|auxA\(3) & (\inst2|auxA\(6))) # (!\inst2|auxA\(3) & ((\inst2|Mux6~11_combout\) # (!\inst2|auxA\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(4),
	datab => \inst2|auxA\(3),
	datac => \inst2|auxA\(6),
	datad => \inst2|Mux6~11_combout\,
	combout => \inst2|Mux5~31_combout\);

-- Location: LCCOMB_X35_Y35_N10
\inst2|Mux5~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~32_combout\ = (\inst2|auxA\(4) & ((\inst2|Mux5~31_combout\ & (!\inst2|Mux4~14_combout\)) # (!\inst2|Mux5~31_combout\ & ((\inst2|Mux2~2_combout\))))) # (!\inst2|auxA\(4) & (((\inst2|Mux5~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(4),
	datab => \inst2|Mux4~14_combout\,
	datac => \inst2|Mux2~2_combout\,
	datad => \inst2|Mux5~31_combout\,
	combout => \inst2|Mux5~32_combout\);

-- Location: LCCOMB_X35_Y35_N0
\inst2|Mux5~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~33_combout\ = (\inst2|auxA\(9) & ((\inst2|Mux5~30_combout\ & ((\inst2|Mux5~32_combout\))) # (!\inst2|Mux5~30_combout\ & (\inst2|Mux5~26_combout\)))) # (!\inst2|auxA\(9) & (((\inst2|Mux5~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux5~26_combout\,
	datab => \inst2|auxA\(9),
	datac => \inst2|Mux5~30_combout\,
	datad => \inst2|Mux5~32_combout\,
	combout => \inst2|Mux5~33_combout\);

-- Location: LCCOMB_X35_Y36_N12
\inst2|Mux5~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~34_combout\ = (\inst2|auxA\(8) & ((\inst2|auxA\(5)) # ((\inst2|Mux5~23_combout\)))) # (!\inst2|auxA\(8) & (!\inst2|auxA\(5) & ((\inst2|Mux5~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|auxA\(5),
	datac => \inst2|Mux5~23_combout\,
	datad => \inst2|Mux5~33_combout\,
	combout => \inst2|Mux5~34_combout\);

-- Location: LCCOMB_X35_Y36_N26
\inst2|Mux5~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~43_combout\ = (\inst2|auxA\(5) & ((\inst2|Mux5~34_combout\ & (\inst2|Mux5~42_combout\)) # (!\inst2|Mux5~34_combout\ & ((\inst2|Mux5~14_combout\))))) # (!\inst2|auxA\(5) & (((\inst2|Mux5~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(5),
	datab => \inst2|Mux5~42_combout\,
	datac => \inst2|Mux5~14_combout\,
	datad => \inst2|Mux5~34_combout\,
	combout => \inst2|Mux5~43_combout\);

-- Location: LCCOMB_X37_Y35_N16
\inst2|Mux5~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~64_combout\ = (\inst2|auxA\(8) & (\inst2|auxA\(7) & (!\inst2|auxA\(4)))) # (!\inst2|auxA\(8) & ((\inst2|auxA\(7)) # ((\inst2|Mux4~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|auxA\(7),
	datac => \inst2|auxA\(4),
	datad => \inst2|Mux4~25_combout\,
	combout => \inst2|Mux5~64_combout\);

-- Location: LCCOMB_X36_Y35_N0
\inst2|Mux5~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~65_combout\ = (\inst2|auxA\(6) & (\inst2|auxA\(8))) # (!\inst2|auxA\(6) & ((\inst2|auxA\(8) & ((\inst2|Mux2~9_combout\) # (!\inst2|Mux5~64_combout\))) # (!\inst2|auxA\(8) & ((\inst2|Mux5~64_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(8),
	datac => \inst2|Mux2~9_combout\,
	datad => \inst2|Mux5~64_combout\,
	combout => \inst2|Mux5~65_combout\);

-- Location: LCCOMB_X35_Y36_N16
\inst2|Mux5~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~66_combout\ = (\inst2|auxA\(6) & ((\inst2|auxA\(7) & (!\inst2|Mux5~65_combout\)) # (!\inst2|auxA\(7) & (\inst2|Mux5~65_combout\ & \inst2|Mux5~5_combout\)))) # (!\inst2|auxA\(6) & (((\inst2|Mux5~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(7),
	datac => \inst2|Mux5~65_combout\,
	datad => \inst2|Mux5~5_combout\,
	combout => \inst2|Mux5~66_combout\);

-- Location: LCCOMB_X36_Y35_N20
\inst2|Mux5~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~44_combout\ = (\inst2|auxA\(4) & ((\inst2|auxA\(7) & (\inst2|Mux4~14_combout\)) # (!\inst2|auxA\(7) & ((\inst2|auxA\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(4),
	datac => \inst2|Mux4~14_combout\,
	datad => \inst2|auxA\(3),
	combout => \inst2|Mux5~44_combout\);

-- Location: LCCOMB_X36_Y35_N18
\inst2|Mux5~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~45_combout\ = (\inst2|auxA\(6) & ((\inst2|auxA\(7) $ (\inst2|auxA\(8))) # (!\inst2|Mux5~44_combout\))) # (!\inst2|auxA\(6) & (!\inst2|auxA\(7) & ((\inst2|auxA\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|Mux5~44_combout\,
	datac => \inst2|auxA\(6),
	datad => \inst2|auxA\(8),
	combout => \inst2|Mux5~45_combout\);

-- Location: LCCOMB_X34_Y37_N2
\inst2|Mux5~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~53_combout\ = (\inst2|auxA\(3) & (\inst2|auxA\(2) & ((\inst2|auxA\(1)) # (\inst2|auxA\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(1),
	datab => \inst2|auxA\(3),
	datac => \inst2|auxA\(2),
	datad => \inst2|auxA\(8),
	combout => \inst2|Mux5~53_combout\);

-- Location: LCCOMB_X34_Y37_N28
\inst2|Mux5~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~54_combout\ = (\inst2|auxA\(4)) # (\inst2|Mux5~53_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|auxA\(4),
	datad => \inst2|Mux5~53_combout\,
	combout => \inst2|Mux5~54_combout\);

-- Location: LCCOMB_X36_Y35_N12
\inst2|Mux5~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~60_combout\ = (!\inst2|auxA\(8) & ((\inst2|auxA\(4) & ((\inst2|Mux4~14_combout\))) # (!\inst2|auxA\(4) & (!\inst2|Mux5~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|auxA\(4),
	datac => \inst2|Mux5~16_combout\,
	datad => \inst2|Mux4~14_combout\,
	combout => \inst2|Mux5~60_combout\);

-- Location: LCCOMB_X36_Y35_N26
\inst2|Mux5~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~61_combout\ = (\inst2|Mux5~60_combout\) # ((\inst2|auxA\(8) & (\inst2|auxA\(4) & !\inst2|Mux5~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|auxA\(4),
	datac => \inst2|Mux5~6_combout\,
	datad => \inst2|Mux5~60_combout\,
	combout => \inst2|Mux5~61_combout\);

-- Location: LCCOMB_X35_Y35_N6
\inst2|Mux5~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~55_combout\ = (!\inst2|auxA\(8) & ((\inst2|auxA\(4) & (!\inst2|Mux2~2_combout\)) # (!\inst2|auxA\(4) & ((\inst2|auxA\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(4),
	datab => \inst2|auxA\(8),
	datac => \inst2|Mux2~2_combout\,
	datad => \inst2|auxA\(3),
	combout => \inst2|Mux5~55_combout\);

-- Location: LCCOMB_X35_Y35_N24
\inst2|Mux5~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~56_combout\ = (\inst2|Mux5~55_combout\) # ((\inst2|Mux4~10_combout\ & (\inst2|auxA\(8) & \inst2|auxA\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux4~10_combout\,
	datab => \inst2|auxA\(8),
	datac => \inst2|auxA\(4),
	datad => \inst2|Mux5~55_combout\,
	combout => \inst2|Mux5~56_combout\);

-- Location: LCCOMB_X35_Y35_N18
\inst2|Mux5~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~57_combout\ = (\inst2|auxA\(4) & ((\inst2|auxA\(8) & (!\inst2|Mux2~2_combout\)) # (!\inst2|auxA\(8) & ((!\inst2|Mux4~49_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(4),
	datab => \inst2|auxA\(8),
	datac => \inst2|Mux2~2_combout\,
	datad => \inst2|Mux4~49_combout\,
	combout => \inst2|Mux5~57_combout\);

-- Location: LCCOMB_X35_Y35_N20
\inst2|Mux5~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~58_combout\ = (\inst2|Mux5~57_combout\) # ((!\inst2|auxA\(4) & (\inst2|auxA\(8) & \inst2|Mux5~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(4),
	datab => \inst2|auxA\(8),
	datac => \inst2|Mux5~16_combout\,
	datad => \inst2|Mux5~57_combout\,
	combout => \inst2|Mux5~58_combout\);

-- Location: LCCOMB_X35_Y35_N2
\inst2|Mux5~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~59_combout\ = (\inst2|auxA\(7) & ((\inst2|Mux5~56_combout\) # ((\inst2|auxA\(6))))) # (!\inst2|auxA\(7) & (((!\inst2|auxA\(6) & \inst2|Mux5~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|Mux5~56_combout\,
	datac => \inst2|auxA\(6),
	datad => \inst2|Mux5~58_combout\,
	combout => \inst2|Mux5~59_combout\);

-- Location: LCCOMB_X35_Y36_N4
\inst2|Mux5~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~62_combout\ = (\inst2|auxA\(6) & ((\inst2|Mux5~59_combout\ & ((\inst2|Mux5~61_combout\))) # (!\inst2|Mux5~59_combout\ & (!\inst2|Mux5~54_combout\)))) # (!\inst2|auxA\(6) & (((\inst2|Mux5~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|Mux5~54_combout\,
	datac => \inst2|Mux5~61_combout\,
	datad => \inst2|Mux5~59_combout\,
	combout => \inst2|Mux5~62_combout\);

-- Location: LCCOMB_X36_Y35_N24
\inst2|Mux5~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~51_combout\ = (\inst2|auxA\(7) & (((!\inst2|Mux2~2_combout\)) # (!\inst2|auxA\(4)))) # (!\inst2|auxA\(7) & ((\inst2|auxA\(4)) # ((\inst2|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(4),
	datac => \inst2|Mux1~4_combout\,
	datad => \inst2|Mux2~2_combout\,
	combout => \inst2|Mux5~51_combout\);

-- Location: LCCOMB_X37_Y35_N14
\inst2|Mux5~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~46_combout\ = (\inst2|auxA\(7) & (!\inst2|auxA\(4))) # (!\inst2|auxA\(7) & ((\inst2|auxA\(4) & (!\inst2|Mux1~4_combout\)) # (!\inst2|auxA\(4) & ((!\inst2|Mux3~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(4),
	datac => \inst2|Mux1~4_combout\,
	datad => \inst2|Mux3~8_combout\,
	combout => \inst2|Mux5~46_combout\);

-- Location: LCCOMB_X37_Y35_N26
\inst2|Mux5~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~48_combout\ = (\inst2|auxA\(4) & ((\inst2|auxA\(7) & ((!\inst2|Mux3~8_combout\))) # (!\inst2|auxA\(7) & (!\inst2|Mux5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(4),
	datac => \inst2|Mux5~6_combout\,
	datad => \inst2|Mux3~8_combout\,
	combout => \inst2|Mux5~48_combout\);

-- Location: LCCOMB_X37_Y35_N8
\inst2|Mux5~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~49_combout\ = (\inst2|Mux5~48_combout\) # ((!\inst2|auxA\(7) & (!\inst2|auxA\(4) & !\inst2|Mux4~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(4),
	datac => \inst2|Mux5~48_combout\,
	datad => \inst2|Mux4~32_combout\,
	combout => \inst2|Mux5~49_combout\);

-- Location: LCCOMB_X37_Y35_N12
\inst2|Mux5~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~47_combout\ = (\inst2|auxA\(7) & (((!\inst2|Mux2~9_combout\) # (!\inst2|auxA\(4))))) # (!\inst2|auxA\(7) & (!\inst2|Mux4~49_combout\ & (\inst2|auxA\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux4~49_combout\,
	datab => \inst2|auxA\(7),
	datac => \inst2|auxA\(4),
	datad => \inst2|Mux2~9_combout\,
	combout => \inst2|Mux5~47_combout\);

-- Location: LCCOMB_X37_Y35_N6
\inst2|Mux5~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~50_combout\ = (\inst2|auxA\(8) & ((\inst2|auxA\(6)) # ((\inst2|Mux5~47_combout\)))) # (!\inst2|auxA\(8) & (!\inst2|auxA\(6) & (\inst2|Mux5~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|auxA\(6),
	datac => \inst2|Mux5~49_combout\,
	datad => \inst2|Mux5~47_combout\,
	combout => \inst2|Mux5~50_combout\);

-- Location: LCCOMB_X36_Y35_N6
\inst2|Mux5~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~52_combout\ = (\inst2|auxA\(6) & ((\inst2|Mux5~50_combout\ & (\inst2|Mux5~51_combout\)) # (!\inst2|Mux5~50_combout\ & ((\inst2|Mux5~46_combout\))))) # (!\inst2|auxA\(6) & (((\inst2|Mux5~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|Mux5~51_combout\,
	datac => \inst2|Mux5~46_combout\,
	datad => \inst2|Mux5~50_combout\,
	combout => \inst2|Mux5~52_combout\);

-- Location: LCCOMB_X35_Y36_N18
\inst2|Mux5~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~63_combout\ = (\inst2|auxA\(9) & (\inst2|auxA\(5))) # (!\inst2|auxA\(9) & ((\inst2|auxA\(5) & ((\inst2|Mux5~52_combout\))) # (!\inst2|auxA\(5) & (\inst2|Mux5~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(9),
	datab => \inst2|auxA\(5),
	datac => \inst2|Mux5~62_combout\,
	datad => \inst2|Mux5~52_combout\,
	combout => \inst2|Mux5~63_combout\);

-- Location: LCCOMB_X35_Y36_N10
\inst2|Mux5~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~67_combout\ = (\inst2|auxA\(9) & ((\inst2|Mux5~63_combout\ & (\inst2|Mux5~66_combout\)) # (!\inst2|Mux5~63_combout\ & ((\inst2|Mux5~45_combout\))))) # (!\inst2|auxA\(9) & (((\inst2|Mux5~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(9),
	datab => \inst2|Mux5~66_combout\,
	datac => \inst2|Mux5~45_combout\,
	datad => \inst2|Mux5~63_combout\,
	combout => \inst2|Mux5~67_combout\);

-- Location: LCCOMB_X35_Y36_N28
\inst2|Mux5~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~68_combout\ = (!\inst2|auxA\(11) & ((\inst2|auxA\(10) & (\inst2|Mux5~43_combout\)) # (!\inst2|auxA\(10) & ((\inst2|Mux5~67_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(11),
	datab => \inst2|auxA\(10),
	datac => \inst2|Mux5~43_combout\,
	datad => \inst2|Mux5~67_combout\,
	combout => \inst2|Mux5~68_combout\);

-- Location: LCCOMB_X35_Y36_N2
\inst2|Mux5~88\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~88_combout\ = (\inst2|Mux5~68_combout\) # ((\inst2|auxA\(11) & (!\inst2|auxA\(10) & \inst2|Mux5~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(11),
	datab => \inst2|auxA\(10),
	datac => \inst2|Mux5~87_combout\,
	datad => \inst2|Mux5~68_combout\,
	combout => \inst2|Mux5~88_combout\);

-- Location: LCCOMB_X35_Y38_N14
\inst2|Mux6~98\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~98_combout\ = (\inst2|auxA\(2) & (((!\inst2|auxA\(6))))) # (!\inst2|auxA\(2) & (!\inst2|auxA\(1) & (!\inst2|auxA\(0) & \inst2|auxA\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(1),
	datab => \inst2|auxA\(2),
	datac => \inst2|auxA\(0),
	datad => \inst2|auxA\(6),
	combout => \inst2|Mux6~98_combout\);

-- Location: LCCOMB_X35_Y38_N0
\inst2|Mux6~97\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~97_combout\ = (!\inst2|auxA\(2) & (\inst2|auxA\(6) & ((!\inst2|auxA\(0)) # (!\inst2|auxA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(1),
	datab => \inst2|auxA\(2),
	datac => \inst2|auxA\(0),
	datad => \inst2|auxA\(6),
	combout => \inst2|Mux6~97_combout\);

-- Location: LCCOMB_X35_Y38_N16
\inst2|Mux6~99\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~99_combout\ = ((\inst2|auxA\(5) & ((\inst2|Mux6~97_combout\))) # (!\inst2|auxA\(5) & (!\inst2|Mux6~98_combout\))) # (!\inst2|auxA\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(5),
	datac => \inst2|Mux6~98_combout\,
	datad => \inst2|Mux6~97_combout\,
	combout => \inst2|Mux6~99_combout\);

-- Location: LCCOMB_X36_Y37_N6
\inst2|Mux6~114\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~114_combout\ = (\inst2|auxA\(6)) # ((\inst2|auxA\(2) & ((\inst2|auxA\(0)) # (\inst2|auxA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(0),
	datac => \inst2|auxA\(1),
	datad => \inst2|auxA\(2),
	combout => \inst2|Mux6~114_combout\);

-- Location: LCCOMB_X35_Y38_N28
\inst2|Mux6~112\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~112_combout\ = (\inst2|auxA\(2) & (\inst2|auxA\(5))) # (!\inst2|auxA\(2) & (!\inst2|auxA\(5) & \inst2|auxA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|auxA\(2),
	datac => \inst2|auxA\(5),
	datad => \inst2|auxA\(1),
	combout => \inst2|Mux6~112_combout\);

-- Location: LCCOMB_X35_Y38_N10
\inst2|Mux6~113\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~113_combout\ = (\inst2|auxA\(6) & (\inst2|auxA\(7) $ (\inst2|auxA\(2) $ (\inst2|Mux6~112_combout\)))) # (!\inst2|auxA\(6) & ((\inst2|auxA\(7)) # ((\inst2|auxA\(2) & !\inst2|Mux6~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(7),
	datac => \inst2|auxA\(2),
	datad => \inst2|Mux6~112_combout\,
	combout => \inst2|Mux6~113_combout\);

-- Location: LCCOMB_X35_Y38_N8
\inst2|Mux6~115\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~115_combout\ = (\inst2|auxA\(5) & ((\inst2|Mux6~113_combout\ & ((\inst2|Mux6~114_combout\))) # (!\inst2|Mux6~113_combout\ & (!\inst2|Mux6~111_combout\)))) # (!\inst2|auxA\(5) & (((\inst2|Mux6~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux6~111_combout\,
	datab => \inst2|auxA\(5),
	datac => \inst2|Mux6~114_combout\,
	datad => \inst2|Mux6~113_combout\,
	combout => \inst2|Mux6~115_combout\);

-- Location: LCCOMB_X39_Y38_N30
\inst2|Mux6~103\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~103_combout\ = (\inst2|auxA\(7) & (((!\inst2|auxA\(2)) # (!\inst2|auxA\(1))) # (!\inst2|auxA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(0),
	datab => \inst2|auxA\(7),
	datac => \inst2|auxA\(1),
	datad => \inst2|auxA\(2),
	combout => \inst2|Mux6~103_combout\);

-- Location: LCCOMB_X35_Y38_N20
\inst2|Mux6~101\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~101_combout\ = (\inst2|auxA\(1) & (((!\inst2|auxA\(7)) # (!\inst2|auxA\(2))))) # (!\inst2|auxA\(1) & ((\inst2|auxA\(0)) # ((\inst2|auxA\(2)) # (\inst2|auxA\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(1),
	datab => \inst2|auxA\(0),
	datac => \inst2|auxA\(2),
	datad => \inst2|auxA\(7),
	combout => \inst2|Mux6~101_combout\);

-- Location: LCCOMB_X35_Y38_N18
\inst2|Mux6~102\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~102_combout\ = (\inst2|auxA\(6) & ((\inst2|auxA\(7)) # ((\inst2|auxA\(5))))) # (!\inst2|auxA\(6) & (((!\inst2|auxA\(5) & !\inst2|Mux6~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(7),
	datac => \inst2|auxA\(5),
	datad => \inst2|Mux6~101_combout\,
	combout => \inst2|Mux6~102_combout\);

-- Location: LCCOMB_X35_Y38_N4
\inst2|Mux6~104\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~104_combout\ = (\inst2|auxA\(5) & ((\inst2|Mux6~102_combout\ & ((!\inst2|Mux6~103_combout\))) # (!\inst2|Mux6~102_combout\ & (\inst2|Mux6~100_combout\)))) # (!\inst2|auxA\(5) & (((\inst2|Mux6~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux6~100_combout\,
	datab => \inst2|auxA\(5),
	datac => \inst2|Mux6~103_combout\,
	datad => \inst2|Mux6~102_combout\,
	combout => \inst2|Mux6~104_combout\);

-- Location: LCCOMB_X37_Y34_N12
\inst2|Mux6~105\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~105_combout\ = (\inst2|auxA\(6) & \inst2|auxA\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|auxA\(6),
	datad => \inst2|auxA\(2),
	combout => \inst2|Mux6~105_combout\);

-- Location: LCCOMB_X35_Y38_N26
\inst2|Mux6~106\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~106_combout\ = (\inst2|auxA\(1) & (\inst2|auxA\(2) & ((\inst2|auxA\(0)) # (!\inst2|auxA\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(1),
	datab => \inst2|auxA\(0),
	datac => \inst2|auxA\(2),
	datad => \inst2|auxA\(6),
	combout => \inst2|Mux6~106_combout\);

-- Location: LCCOMB_X35_Y38_N24
\inst2|Mux6~107\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~107_combout\ = (\inst2|auxA\(5) & (((\inst2|auxA\(7))))) # (!\inst2|auxA\(5) & ((\inst2|auxA\(7) & (!\inst2|auxA\(6))) # (!\inst2|auxA\(7) & ((\inst2|Mux6~106_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(5),
	datac => \inst2|Mux6~106_combout\,
	datad => \inst2|auxA\(7),
	combout => \inst2|Mux6~107_combout\);

-- Location: LCCOMB_X35_Y38_N12
\inst2|Mux6~109\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~109_combout\ = (\inst2|auxA\(5) & ((\inst2|Mux6~107_combout\ & (!\inst2|Mux6~108_combout\)) # (!\inst2|Mux6~107_combout\ & ((\inst2|Mux6~105_combout\))))) # (!\inst2|auxA\(5) & (((\inst2|Mux6~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux6~108_combout\,
	datab => \inst2|auxA\(5),
	datac => \inst2|Mux6~105_combout\,
	datad => \inst2|Mux6~107_combout\,
	combout => \inst2|Mux6~109_combout\);

-- Location: LCCOMB_X35_Y38_N2
\inst2|Mux6~110\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~110_combout\ = (\inst2|auxA\(8) & ((\inst2|auxA\(3)) # ((\inst2|Mux6~104_combout\)))) # (!\inst2|auxA\(8) & (!\inst2|auxA\(3) & ((\inst2|Mux6~109_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|auxA\(3),
	datac => \inst2|Mux6~104_combout\,
	datad => \inst2|Mux6~109_combout\,
	combout => \inst2|Mux6~110_combout\);

-- Location: LCCOMB_X35_Y38_N22
\inst2|Mux6~116\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~116_combout\ = (\inst2|auxA\(3) & ((\inst2|Mux6~110_combout\ & ((\inst2|Mux6~115_combout\))) # (!\inst2|Mux6~110_combout\ & (\inst2|Mux6~99_combout\)))) # (!\inst2|auxA\(3) & (((\inst2|Mux6~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(3),
	datab => \inst2|Mux6~99_combout\,
	datac => \inst2|Mux6~115_combout\,
	datad => \inst2|Mux6~110_combout\,
	combout => \inst2|Mux6~116_combout\);

-- Location: LCCOMB_X37_Y38_N20
\inst2|Mux6~89\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~89_combout\ = (\inst2|auxA\(3)) # ((\inst2|auxA\(2) & \inst2|auxA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|auxA\(3),
	datac => \inst2|auxA\(2),
	datad => \inst2|auxA\(1),
	combout => \inst2|Mux6~89_combout\);

-- Location: LCCOMB_X37_Y38_N2
\inst2|Mux6~90\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~90_combout\ = (\inst2|auxA\(7) & (!\inst2|auxA\(6))) # (!\inst2|auxA\(7) & (\inst2|auxA\(5) & ((\inst2|auxA\(6)) # (!\inst2|Mux6~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(7),
	datac => \inst2|auxA\(5),
	datad => \inst2|Mux6~89_combout\,
	combout => \inst2|Mux6~90_combout\);

-- Location: LCCOMB_X37_Y38_N0
\inst2|Mux6~91\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~91_combout\ = (\inst2|auxA\(8) & (((\inst2|Mux3~8_combout\) # (!\inst2|Mux6~90_combout\)) # (!\inst2|auxA\(6)))) # (!\inst2|auxA\(8) & (\inst2|auxA\(6) $ (((!\inst2|Mux6~90_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|auxA\(6),
	datac => \inst2|Mux3~8_combout\,
	datad => \inst2|Mux6~90_combout\,
	combout => \inst2|Mux6~91_combout\);

-- Location: LCCOMB_X37_Y38_N24
\inst2|Mux6~95\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~95_combout\ = (\inst2|auxA\(7) & ((\inst2|Mux6~91_combout\ & (!\inst2|Mux6~94_combout\)) # (!\inst2|Mux6~91_combout\ & ((!\inst2|Mux7~0_combout\))))) # (!\inst2|auxA\(7) & (((\inst2|Mux6~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux6~94_combout\,
	datab => \inst2|auxA\(7),
	datac => \inst2|Mux7~0_combout\,
	datad => \inst2|Mux6~91_combout\,
	combout => \inst2|Mux6~95_combout\);

-- Location: LCCOMB_X34_Y36_N24
\inst2|Mux6~168\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~168_combout\ = (\inst2|auxA\(6) & (\inst2|auxA\(8))) # (!\inst2|auxA\(6) & ((\inst2|auxA\(8) & ((\inst2|auxA\(1)) # (!\inst2|auxA\(5)))) # (!\inst2|auxA\(8) & ((\inst2|auxA\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(8),
	datac => \inst2|auxA\(1),
	datad => \inst2|auxA\(5),
	combout => \inst2|Mux6~168_combout\);

-- Location: LCCOMB_X34_Y36_N14
\inst2|Mux6~169\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~169_combout\ = (\inst2|auxA\(5) & (((\inst2|auxA\(7) & \inst2|Mux6~168_combout\)))) # (!\inst2|auxA\(5) & (\inst2|Mux6~168_combout\ $ (((\inst2|auxA\(6) & \inst2|auxA\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(5),
	datac => \inst2|auxA\(7),
	datad => \inst2|Mux6~168_combout\,
	combout => \inst2|Mux6~169_combout\);

-- Location: LCCOMB_X34_Y36_N8
\inst2|Mux6~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~75_combout\ = (\inst2|auxA\(7)) # ((\inst2|auxA\(1) & ((\inst2|auxA\(0)) # (\inst2|auxA\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(0),
	datab => \inst2|auxA\(7),
	datac => \inst2|auxA\(8),
	datad => \inst2|auxA\(1),
	combout => \inst2|Mux6~75_combout\);

-- Location: LCCOMB_X34_Y36_N2
\inst2|Mux6~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~76_combout\ = (\inst2|auxA\(1) & (((!\inst2|auxA\(6)) # (!\inst2|auxA\(7))) # (!\inst2|auxA\(0)))) # (!\inst2|auxA\(1) & (((\inst2|auxA\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(1),
	datab => \inst2|auxA\(0),
	datac => \inst2|auxA\(7),
	datad => \inst2|auxA\(6),
	combout => \inst2|Mux6~76_combout\);

-- Location: LCCOMB_X34_Y36_N20
\inst2|Mux6~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~77_combout\ = (\inst2|auxA\(8) & ((\inst2|auxA\(5) & (\inst2|auxA\(6))) # (!\inst2|auxA\(5) & ((\inst2|Mux6~76_combout\))))) # (!\inst2|auxA\(8) & (\inst2|auxA\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(8),
	datac => \inst2|auxA\(5),
	datad => \inst2|Mux6~76_combout\,
	combout => \inst2|Mux6~77_combout\);

-- Location: LCCOMB_X34_Y36_N4
\inst2|Mux6~79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~79_combout\ = (\inst2|auxA\(5) & ((\inst2|Mux6~77_combout\ & (!\inst2|Mux6~78_combout\)) # (!\inst2|Mux6~77_combout\ & ((!\inst2|Mux6~75_combout\))))) # (!\inst2|auxA\(5) & (((\inst2|Mux6~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux6~78_combout\,
	datab => \inst2|auxA\(5),
	datac => \inst2|Mux6~75_combout\,
	datad => \inst2|Mux6~77_combout\,
	combout => \inst2|Mux6~79_combout\);

-- Location: LCCOMB_X38_Y33_N30
\inst2|Mux6~82\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~82_combout\ = \inst2|auxA\(6) $ (((\inst2|auxA\(1)) # ((\inst2|auxA\(5)) # (\inst2|auxA\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(1),
	datac => \inst2|auxA\(5),
	datad => \inst2|auxA\(0),
	combout => \inst2|Mux6~82_combout\);

-- Location: LCCOMB_X38_Y33_N0
\inst2|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Equal0~1_combout\ = (\inst2|auxA\(7) & \inst2|auxA\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|auxA\(7),
	datad => \inst2|auxA\(8),
	combout => \inst2|Equal0~1_combout\);

-- Location: LCCOMB_X38_Y33_N18
\inst2|Mux6~80\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~80_combout\ = (!\inst2|auxA\(5) & (\inst2|Equal0~1_combout\ & ((\inst2|auxA\(1)) # (\inst2|auxA\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(1),
	datab => \inst2|auxA\(6),
	datac => \inst2|auxA\(5),
	datad => \inst2|Equal0~1_combout\,
	combout => \inst2|Mux6~80_combout\);

-- Location: LCCOMB_X38_Y33_N16
\inst2|Mux6~83\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~83_combout\ = (\inst2|Mux6~81_combout\) # ((\inst2|Mux6~80_combout\) # ((!\inst2|auxA\(8) & !\inst2|Mux6~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux6~81_combout\,
	datab => \inst2|auxA\(8),
	datac => \inst2|Mux6~82_combout\,
	datad => \inst2|Mux6~80_combout\,
	combout => \inst2|Mux6~83_combout\);

-- Location: LCCOMB_X34_Y36_N10
\inst2|Mux6~84\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~84_combout\ = (\inst2|auxA\(2) & ((\inst2|auxA\(3)) # ((\inst2|Mux6~79_combout\)))) # (!\inst2|auxA\(2) & (!\inst2|auxA\(3) & ((\inst2|Mux6~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(2),
	datab => \inst2|auxA\(3),
	datac => \inst2|Mux6~79_combout\,
	datad => \inst2|Mux6~83_combout\,
	combout => \inst2|Mux6~84_combout\);

-- Location: LCCOMB_X34_Y36_N18
\inst2|Mux6~88\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~88_combout\ = (\inst2|auxA\(3) & ((\inst2|Mux6~84_combout\ & (\inst2|Mux6~87_combout\)) # (!\inst2|Mux6~84_combout\ & ((\inst2|Mux6~169_combout\))))) # (!\inst2|auxA\(3) & (((\inst2|Mux6~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux6~87_combout\,
	datab => \inst2|auxA\(3),
	datac => \inst2|Mux6~169_combout\,
	datad => \inst2|Mux6~84_combout\,
	combout => \inst2|Mux6~88_combout\);

-- Location: LCCOMB_X34_Y36_N28
\inst2|Mux6~96\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~96_combout\ = (\inst2|auxA\(9) & ((\inst2|auxA\(4)) # ((\inst2|Mux6~88_combout\)))) # (!\inst2|auxA\(9) & (!\inst2|auxA\(4) & (\inst2|Mux6~95_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(9),
	datab => \inst2|auxA\(4),
	datac => \inst2|Mux6~95_combout\,
	datad => \inst2|Mux6~88_combout\,
	combout => \inst2|Mux6~96_combout\);

-- Location: LCCOMB_X34_Y36_N30
\inst2|Mux6~117\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~117_combout\ = (\inst2|auxA\(4) & ((\inst2|Mux6~96_combout\ & ((\inst2|Mux6~116_combout\))) # (!\inst2|Mux6~96_combout\ & (!\inst2|Mux6~171_combout\)))) # (!\inst2|auxA\(4) & (((\inst2|Mux6~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux6~171_combout\,
	datab => \inst2|auxA\(4),
	datac => \inst2|Mux6~116_combout\,
	datad => \inst2|Mux6~96_combout\,
	combout => \inst2|Mux6~117_combout\);

-- Location: LCCOMB_X39_Y38_N16
\inst2|Mux6~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~54_combout\ = (!\inst2|auxA\(1) & !\inst2|auxA\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|auxA\(1),
	datad => \inst2|auxA\(2),
	combout => \inst2|Mux6~54_combout\);

-- Location: LCCOMB_X39_Y38_N14
\inst2|Mux6~163\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~163_combout\ = (\inst2|auxA\(7) & (((\inst2|auxA\(8) & \inst2|Mux6~54_combout\)))) # (!\inst2|auxA\(7) & (((!\inst2|auxA\(8))) # (!\inst2|auxA\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(9),
	datab => \inst2|auxA\(7),
	datac => \inst2|auxA\(8),
	datad => \inst2|Mux6~54_combout\,
	combout => \inst2|Mux6~163_combout\);

-- Location: LCCOMB_X39_Y34_N12
\inst2|Mux6~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~45_combout\ = (\inst2|auxA\(2) & (((!\inst2|auxA\(0) & !\inst2|auxA\(1))) # (!\inst2|auxA\(9)))) # (!\inst2|auxA\(2) & (((\inst2|auxA\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(0),
	datab => \inst2|auxA\(1),
	datac => \inst2|auxA\(2),
	datad => \inst2|auxA\(9),
	combout => \inst2|Mux6~45_combout\);

-- Location: LCCOMB_X38_Y38_N14
\inst2|Mux6~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~43_combout\ = (\inst2|auxA\(9) & (!\inst2|auxA\(7) & ((\inst2|auxA\(1)) # (\inst2|auxA\(2))))) # (!\inst2|auxA\(9) & (\inst2|auxA\(1) & (\inst2|auxA\(2) & \inst2|auxA\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(1),
	datab => \inst2|auxA\(2),
	datac => \inst2|auxA\(9),
	datad => \inst2|auxA\(7),
	combout => \inst2|Mux6~43_combout\);

-- Location: LCCOMB_X38_Y38_N0
\inst2|Mux6~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~44_combout\ = (\inst2|auxA\(8) & (((\inst2|auxA\(7))))) # (!\inst2|auxA\(8) & (((!\inst2|auxA\(0) & \inst2|auxA\(7))) # (!\inst2|Mux6~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(0),
	datab => \inst2|auxA\(8),
	datac => \inst2|Mux6~43_combout\,
	datad => \inst2|auxA\(7),
	combout => \inst2|Mux6~44_combout\);

-- Location: LCCOMB_X38_Y38_N26
\inst2|Mux6~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~46_combout\ = (\inst2|auxA\(8) & ((\inst2|Mux6~44_combout\ & ((\inst2|Mux6~45_combout\))) # (!\inst2|Mux6~44_combout\ & (\inst2|auxA\(9))))) # (!\inst2|auxA\(8) & (((\inst2|Mux6~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(9),
	datab => \inst2|auxA\(8),
	datac => \inst2|Mux6~45_combout\,
	datad => \inst2|Mux6~44_combout\,
	combout => \inst2|Mux6~46_combout\);

-- Location: LCCOMB_X38_Y38_N18
\inst2|Mux6~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~49_combout\ = (\inst2|auxA\(1)) # ((\inst2|auxA\(0) & !\inst2|auxA\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(0),
	datac => \inst2|auxA\(1),
	datad => \inst2|auxA\(8),
	combout => \inst2|Mux6~49_combout\);

-- Location: LCCOMB_X38_Y38_N16
\inst2|Mux6~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~50_combout\ = (\inst2|auxA\(7) & (!\inst2|auxA\(2) & ((!\inst2|auxA\(9))))) # (!\inst2|auxA\(7) & ((\inst2|auxA\(2) & (\inst2|auxA\(8))) # (!\inst2|auxA\(2) & (!\inst2|auxA\(8) & \inst2|auxA\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(2),
	datac => \inst2|auxA\(8),
	datad => \inst2|auxA\(9),
	combout => \inst2|Mux6~50_combout\);

-- Location: LCCOMB_X38_Y38_N8
\inst2|Mux6~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~52_combout\ = \inst2|Mux6~51_combout\ $ (((\inst2|Mux6~49_combout\ & \inst2|Mux6~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux6~51_combout\,
	datab => \inst2|Mux6~49_combout\,
	datad => \inst2|Mux6~50_combout\,
	combout => \inst2|Mux6~52_combout\);

-- Location: LCCOMB_X38_Y38_N30
\inst2|Mux6~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~47_combout\ = (\inst2|auxA\(7) & (((!\inst2|Equal0~2_combout\)))) # (!\inst2|auxA\(7) & (\inst2|auxA\(0) & (\inst2|Mux6~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(0),
	datab => \inst2|auxA\(7),
	datac => \inst2|Mux6~11_combout\,
	datad => \inst2|Equal0~2_combout\,
	combout => \inst2|Mux6~47_combout\);

-- Location: LCCOMB_X38_Y38_N20
\inst2|Mux6~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~48_combout\ = (\inst2|Mux6~47_combout\) # ((\inst2|auxA\(8) & ((\inst2|auxA\(9)) # (\inst2|Mux6~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(9),
	datab => \inst2|Mux6~11_combout\,
	datac => \inst2|Mux6~47_combout\,
	datad => \inst2|auxA\(8),
	combout => \inst2|Mux6~48_combout\);

-- Location: LCCOMB_X38_Y38_N6
\inst2|Mux6~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~53_combout\ = (\inst2|auxA\(5) & ((\inst2|auxA\(3)) # ((\inst2|Mux6~48_combout\)))) # (!\inst2|auxA\(5) & (!\inst2|auxA\(3) & (\inst2|Mux6~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(5),
	datab => \inst2|auxA\(3),
	datac => \inst2|Mux6~52_combout\,
	datad => \inst2|Mux6~48_combout\,
	combout => \inst2|Mux6~53_combout\);

-- Location: LCCOMB_X38_Y38_N28
\inst2|Mux6~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~55_combout\ = (\inst2|auxA\(3) & ((\inst2|Mux6~53_combout\ & (\inst2|Mux6~163_combout\)) # (!\inst2|Mux6~53_combout\ & ((\inst2|Mux6~46_combout\))))) # (!\inst2|auxA\(3) & (((\inst2|Mux6~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(3),
	datab => \inst2|Mux6~163_combout\,
	datac => \inst2|Mux6~46_combout\,
	datad => \inst2|Mux6~53_combout\,
	combout => \inst2|Mux6~55_combout\);

-- Location: LCCOMB_X37_Y36_N8
\inst2|Mux6~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~56_combout\ = (\inst2|auxA\(4) & (((\inst2|auxA\(6))))) # (!\inst2|auxA\(4) & ((\inst2|auxA\(6) & (\inst2|Mux6~42_combout\)) # (!\inst2|auxA\(6) & ((\inst2|Mux6~55_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux6~42_combout\,
	datab => \inst2|auxA\(4),
	datac => \inst2|auxA\(6),
	datad => \inst2|Mux6~55_combout\,
	combout => \inst2|Mux6~56_combout\);

-- Location: LCCOMB_X39_Y34_N4
\inst2|Mux6~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~60_combout\ = (\inst2|auxA\(7) & (\inst2|auxA\(1) & (\inst2|auxA\(2) & \inst2|auxA\(0)))) # (!\inst2|auxA\(7) & ((\inst2|auxA\(1)) # ((\inst2|auxA\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(1),
	datac => \inst2|auxA\(2),
	datad => \inst2|auxA\(0),
	combout => \inst2|Mux6~60_combout\);

-- Location: LCCOMB_X39_Y34_N6
\inst2|Mux6~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~61_combout\ = (\inst2|auxA\(8) & (\inst2|Mux6~60_combout\)) # (!\inst2|auxA\(8) & ((\inst2|Mux6~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|auxA\(8),
	datac => \inst2|Mux6~60_combout\,
	datad => \inst2|Mux6~45_combout\,
	combout => \inst2|Mux6~61_combout\);

-- Location: LCCOMB_X39_Y34_N8
\inst2|Mux6~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~62_combout\ = (\inst2|auxA\(9) & ((\inst2|auxA\(7) & (!\inst2|auxA\(8))) # (!\inst2|auxA\(7) & ((!\inst2|Mux6~61_combout\))))) # (!\inst2|auxA\(9) & (!\inst2|Mux6~61_combout\ & (\inst2|auxA\(8) $ (!\inst2|auxA\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(9),
	datab => \inst2|auxA\(8),
	datac => \inst2|auxA\(7),
	datad => \inst2|Mux6~61_combout\,
	combout => \inst2|Mux6~62_combout\);

-- Location: LCCOMB_X39_Y34_N18
\inst2|Equal0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Equal0~3_combout\ = (\inst2|auxA\(2) & (\inst2|auxA\(0) & \inst2|auxA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(2),
	datac => \inst2|auxA\(0),
	datad => \inst2|auxA\(1),
	combout => \inst2|Equal0~3_combout\);

-- Location: LCCOMB_X39_Y34_N28
\inst2|Mux6~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~63_combout\ = (\inst2|auxA\(8) & (((\inst2|auxA\(7))))) # (!\inst2|auxA\(8) & ((\inst2|auxA\(7) & (\inst2|auxA\(9))) # (!\inst2|auxA\(7) & ((\inst2|Equal0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(9),
	datab => \inst2|auxA\(8),
	datac => \inst2|auxA\(7),
	datad => \inst2|Equal0~3_combout\,
	combout => \inst2|Mux6~63_combout\);

-- Location: LCCOMB_X39_Y34_N14
\inst2|Mux6~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~64_combout\ = (\inst2|auxA\(5) & ((\inst2|auxA\(3)) # ((\inst2|Mux6~62_combout\)))) # (!\inst2|auxA\(5) & (!\inst2|auxA\(3) & ((!\inst2|Mux6~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(5),
	datab => \inst2|auxA\(3),
	datac => \inst2|Mux6~62_combout\,
	datad => \inst2|Mux6~63_combout\,
	combout => \inst2|Mux6~64_combout\);

-- Location: LCCOMB_X39_Y34_N22
\inst2|Mux6~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~59_combout\ = (\inst2|auxA\(2) & (((!\inst2|auxA\(9))))) # (!\inst2|auxA\(2) & ((\inst2|auxA\(1) & ((!\inst2|auxA\(9)) # (!\inst2|auxA\(0)))) # (!\inst2|auxA\(1) & ((\inst2|auxA\(0)) # (\inst2|auxA\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(2),
	datab => \inst2|auxA\(1),
	datac => \inst2|auxA\(0),
	datad => \inst2|auxA\(9),
	combout => \inst2|Mux6~59_combout\);

-- Location: LCCOMB_X39_Y34_N30
\inst2|Mux6~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~57_combout\ = (\inst2|auxA\(2)) # ((\inst2|auxA\(1)) # ((\inst2|auxA\(0) & \inst2|auxA\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(2),
	datab => \inst2|auxA\(1),
	datac => \inst2|auxA\(0),
	datad => \inst2|auxA\(9),
	combout => \inst2|Mux6~57_combout\);

-- Location: LCCOMB_X39_Y34_N20
\inst2|Mux6~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~58_combout\ = (\inst2|auxA\(8) & ((\inst2|auxA\(7) & ((!\inst2|Mux6~54_combout\))) # (!\inst2|auxA\(7) & (!\inst2|Mux6~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(8),
	datac => \inst2|Mux6~57_combout\,
	datad => \inst2|Mux6~54_combout\,
	combout => \inst2|Mux6~58_combout\);

-- Location: LCCOMB_X39_Y34_N16
\inst2|Mux6~161\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~161_combout\ = (\inst2|Mux6~58_combout\) # ((\inst2|auxA\(7) & (!\inst2|auxA\(8) & !\inst2|Mux6~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(8),
	datac => \inst2|Mux6~59_combout\,
	datad => \inst2|Mux6~58_combout\,
	combout => \inst2|Mux6~161_combout\);

-- Location: LCCOMB_X38_Y34_N0
\inst2|Mux6~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~69_combout\ = (\inst2|auxA\(3) & ((\inst2|Mux6~64_combout\ & (\inst2|Mux6~68_combout\)) # (!\inst2|Mux6~64_combout\ & ((\inst2|Mux6~161_combout\))))) # (!\inst2|auxA\(3) & (((\inst2|Mux6~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux6~68_combout\,
	datab => \inst2|auxA\(3),
	datac => \inst2|Mux6~64_combout\,
	datad => \inst2|Mux6~161_combout\,
	combout => \inst2|Mux6~69_combout\);

-- Location: LCCOMB_X37_Y36_N30
\inst2|Mux6~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~70_combout\ = (\inst2|auxA\(4) & ((\inst2|Mux6~56_combout\ & ((\inst2|Mux6~69_combout\))) # (!\inst2|Mux6~56_combout\ & (\inst2|Mux6~26_combout\)))) # (!\inst2|auxA\(4) & (((\inst2|Mux6~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux6~26_combout\,
	datab => \inst2|auxA\(4),
	datac => \inst2|Mux6~56_combout\,
	datad => \inst2|Mux6~69_combout\,
	combout => \inst2|Mux6~70_combout\);

-- Location: LCCOMB_X36_Y37_N0
\inst2|Mux6~118\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~118_combout\ = (\inst2|auxA\(6) & (((!\inst2|auxA\(0)) # (!\inst2|auxA\(1))) # (!\inst2|auxA\(2)))) # (!\inst2|auxA\(6) & ((\inst2|auxA\(2)) # ((\inst2|auxA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(2),
	datac => \inst2|auxA\(1),
	datad => \inst2|auxA\(0),
	combout => \inst2|Mux6~118_combout\);

-- Location: LCCOMB_X36_Y37_N2
\inst2|Mux6~121\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~121_combout\ = (\inst2|auxA\(2)) # ((\inst2|auxA\(0) & \inst2|auxA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|auxA\(0),
	datac => \inst2|auxA\(1),
	datad => \inst2|auxA\(2),
	combout => \inst2|Mux6~121_combout\);

-- Location: LCCOMB_X36_Y37_N30
\inst2|Mux6~119\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~119_combout\ = (\inst2|auxA\(6) & ((\inst2|auxA\(2)) # ((\inst2|auxA\(0) & \inst2|auxA\(1))))) # (!\inst2|auxA\(6) & (\inst2|auxA\(2) & ((\inst2|auxA\(0)) # (\inst2|auxA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(0),
	datac => \inst2|auxA\(1),
	datad => \inst2|auxA\(2),
	combout => \inst2|Mux6~119_combout\);

-- Location: LCCOMB_X36_Y37_N16
\inst2|Mux6~120\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~120_combout\ = (\inst2|auxA\(7) & ((\inst2|auxA\(5)) # ((!\inst2|Mux6~119_combout\)))) # (!\inst2|auxA\(7) & (!\inst2|auxA\(5) & ((\inst2|Mux6~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(5),
	datac => \inst2|Mux6~119_combout\,
	datad => \inst2|Mux6~114_combout\,
	combout => \inst2|Mux6~120_combout\);

-- Location: LCCOMB_X36_Y37_N8
\inst2|Mux6~122\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~122_combout\ = (\inst2|auxA\(5) & ((\inst2|Mux6~120_combout\ & ((\inst2|Mux6~121_combout\))) # (!\inst2|Mux6~120_combout\ & (!\inst2|Mux6~118_combout\)))) # (!\inst2|auxA\(5) & (((\inst2|Mux6~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(5),
	datab => \inst2|Mux6~118_combout\,
	datac => \inst2|Mux6~121_combout\,
	datad => \inst2|Mux6~120_combout\,
	combout => \inst2|Mux6~122_combout\);

-- Location: LCCOMB_X36_Y37_N4
\inst2|Mux6~124\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~124_combout\ = (\inst2|auxA\(5) & (((!\inst2|auxA\(2))))) # (!\inst2|auxA\(5) & ((\inst2|auxA\(1)) # ((\inst2|auxA\(0)) # (\inst2|auxA\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(1),
	datab => \inst2|auxA\(0),
	datac => \inst2|auxA\(5),
	datad => \inst2|auxA\(2),
	combout => \inst2|Mux6~124_combout\);

-- Location: LCCOMB_X36_Y37_N10
\inst2|Mux6~123\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~123_combout\ = (\inst2|auxA\(6) & (\inst2|auxA\(5) & ((\inst2|auxA\(1)) # (\inst2|auxA\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(1),
	datac => \inst2|auxA\(5),
	datad => \inst2|auxA\(2),
	combout => \inst2|Mux6~123_combout\);

-- Location: LCCOMB_X36_Y37_N14
\inst2|Mux6~125\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~125_combout\ = (\inst2|auxA\(7)) # ((\inst2|Mux6~123_combout\) # ((!\inst2|auxA\(6) & \inst2|Mux6~124_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|Mux6~124_combout\,
	datac => \inst2|auxA\(7),
	datad => \inst2|Mux6~123_combout\,
	combout => \inst2|Mux6~125_combout\);

-- Location: LCCOMB_X37_Y37_N4
\inst2|Mux6~126\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~126_combout\ = (\inst2|auxA\(6) & ((\inst2|auxA\(0) $ (!\inst2|auxA\(5))) # (!\inst2|auxA\(2)))) # (!\inst2|auxA\(6) & ((\inst2|auxA\(2)) # ((\inst2|auxA\(0) & \inst2|auxA\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(0),
	datac => \inst2|auxA\(2),
	datad => \inst2|auxA\(5),
	combout => \inst2|Mux6~126_combout\);

-- Location: LCCOMB_X37_Y37_N18
\inst2|Mux6~127\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~127_combout\ = (\inst2|auxA\(2) & (\inst2|auxA\(6) & ((\inst2|auxA\(0)) # (\inst2|auxA\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(2),
	datab => \inst2|auxA\(6),
	datac => \inst2|auxA\(0),
	datad => \inst2|auxA\(5),
	combout => \inst2|Mux6~127_combout\);

-- Location: LCCOMB_X37_Y37_N14
\inst2|Mux6~129\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~129_combout\ = (\inst2|auxA\(5) & (\inst2|Mux6~127_combout\ $ (((!\inst2|auxA\(1) & !\inst2|Mux6~126_combout\))))) # (!\inst2|auxA\(5) & ((\inst2|Mux6~126_combout\ & ((!\inst2|Mux6~127_combout\))) # (!\inst2|Mux6~126_combout\ & 
-- (!\inst2|auxA\(1) & \inst2|Mux6~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(5),
	datab => \inst2|auxA\(1),
	datac => \inst2|Mux6~126_combout\,
	datad => \inst2|Mux6~127_combout\,
	combout => \inst2|Mux6~129_combout\);

-- Location: LCCOMB_X37_Y37_N16
\inst2|Mux6~128\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~128_combout\ = (\inst2|auxA\(5) & (\inst2|Mux6~127_combout\ & ((\inst2|auxA\(1)) # (\inst2|Mux6~126_combout\)))) # (!\inst2|auxA\(5) & (\inst2|auxA\(1) & ((\inst2|Mux6~127_combout\) # (!\inst2|Mux6~126_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(5),
	datab => \inst2|auxA\(1),
	datac => \inst2|Mux6~126_combout\,
	datad => \inst2|Mux6~127_combout\,
	combout => \inst2|Mux6~128_combout\);

-- Location: LCCOMB_X37_Y37_N24
\inst2|Mux6~130\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~130_combout\ = \inst2|Mux6~129_combout\ $ (((\inst2|Mux6~128_combout\) # (!\inst2|auxA\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datac => \inst2|Mux6~129_combout\,
	datad => \inst2|Mux6~128_combout\,
	combout => \inst2|Mux6~130_combout\);

-- Location: LCCOMB_X36_Y37_N24
\inst2|Mux6~131\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~131_combout\ = (\inst2|auxA\(8) & ((\inst2|Mux6~125_combout\) # ((\inst2|auxA\(3))))) # (!\inst2|auxA\(8) & (((!\inst2|auxA\(3) & \inst2|Mux6~130_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|Mux6~125_combout\,
	datac => \inst2|auxA\(3),
	datad => \inst2|Mux6~130_combout\,
	combout => \inst2|Mux6~131_combout\);

-- Location: LCCOMB_X36_Y37_N26
\inst2|Mux6~136\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~136_combout\ = (\inst2|auxA\(3) & ((\inst2|Mux6~131_combout\ & (\inst2|Mux6~135_combout\)) # (!\inst2|Mux6~131_combout\ & ((\inst2|Mux6~122_combout\))))) # (!\inst2|auxA\(3) & (((\inst2|Mux6~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux6~135_combout\,
	datab => \inst2|auxA\(3),
	datac => \inst2|Mux6~122_combout\,
	datad => \inst2|Mux6~131_combout\,
	combout => \inst2|Mux6~136_combout\);

-- Location: LCCOMB_X37_Y38_N26
\inst2|Mux6~162\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~162_combout\ = (\inst2|auxA\(6) & ((\inst2|Mux3~8_combout\) # (!\inst2|auxA\(5)))) # (!\inst2|auxA\(6) & ((\inst2|auxA\(5)) # (!\inst2|Mux3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|auxA\(6),
	datac => \inst2|Mux3~8_combout\,
	datad => \inst2|auxA\(5),
	combout => \inst2|Mux6~162_combout\);

-- Location: LCCOMB_X37_Y38_N30
\inst2|Mux6~137\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~137_combout\ = (\inst2|auxA\(3)) # ((\inst2|auxA\(6)) # ((\inst2|auxA\(2) & \inst2|auxA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(3),
	datab => \inst2|auxA\(6),
	datac => \inst2|auxA\(2),
	datad => \inst2|auxA\(1),
	combout => \inst2|Mux6~137_combout\);

-- Location: LCCOMB_X37_Y38_N28
\inst2|Mux6~138\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~138_combout\ = (\inst2|auxA\(5) & (!\inst2|Mux6~137_combout\)) # (!\inst2|auxA\(5) & ((\inst2|auxA\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|auxA\(5),
	datac => \inst2|Mux6~137_combout\,
	datad => \inst2|auxA\(6),
	combout => \inst2|Mux6~138_combout\);

-- Location: LCCOMB_X37_Y38_N18
\inst2|Mux6~139\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~139_combout\ = (\inst2|auxA\(8) & ((\inst2|auxA\(7)) # ((!\inst2|Mux6~162_combout\)))) # (!\inst2|auxA\(8) & (!\inst2|auxA\(7) & ((\inst2|Mux6~138_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|auxA\(7),
	datac => \inst2|Mux6~162_combout\,
	datad => \inst2|Mux6~138_combout\,
	combout => \inst2|Mux6~139_combout\);

-- Location: LCCOMB_X37_Y38_N12
\inst2|Mux6~140\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~140_combout\ = (\inst2|auxA\(7) & ((\inst2|Mux6~139_combout\ & (\inst2|Mux6~94_combout\)) # (!\inst2|Mux6~139_combout\ & ((\inst2|Mux7~0_combout\))))) # (!\inst2|auxA\(7) & (((\inst2|Mux6~139_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux6~94_combout\,
	datab => \inst2|auxA\(7),
	datac => \inst2|Mux7~0_combout\,
	datad => \inst2|Mux6~139_combout\,
	combout => \inst2|Mux6~140_combout\);

-- Location: LCCOMB_X36_Y34_N14
\inst2|Mux6~153\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~153_combout\ = (\inst2|auxA\(6) & (\inst2|auxA\(7) & ((\inst2|auxA\(0)) # (!\inst2|auxA\(5))))) # (!\inst2|auxA\(6) & (((\inst2|auxA\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(0),
	datac => \inst2|auxA\(7),
	datad => \inst2|auxA\(5),
	combout => \inst2|Mux6~153_combout\);

-- Location: LCCOMB_X36_Y34_N12
\inst2|Mux6~154\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~154_combout\ = (\inst2|auxA\(0) & (!\inst2|auxA\(5) & ((\inst2|auxA\(7)) # (\inst2|auxA\(6))))) # (!\inst2|auxA\(0) & (\inst2|auxA\(6) & (\inst2|auxA\(7) $ (!\inst2|auxA\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(0),
	datab => \inst2|auxA\(7),
	datac => \inst2|auxA\(6),
	datad => \inst2|auxA\(5),
	combout => \inst2|Mux6~154_combout\);

-- Location: LCCOMB_X36_Y34_N6
\inst2|Mux6~155\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~155_combout\ = (\inst2|Mux6~154_combout\) # ((\inst2|auxA\(1) & \inst2|auxA\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(1),
	datac => \inst2|auxA\(7),
	datad => \inst2|Mux6~154_combout\,
	combout => \inst2|Mux6~155_combout\);

-- Location: LCCOMB_X36_Y34_N0
\inst2|Mux6~156\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~156_combout\ = (\inst2|Mux6~155_combout\ & (\inst2|auxA\(7) $ (((!\inst2|auxA\(2) & !\inst2|Mux6~153_combout\))))) # (!\inst2|Mux6~155_combout\ & (\inst2|Mux6~153_combout\ & ((\inst2|auxA\(2)) # (!\inst2|auxA\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(2),
	datac => \inst2|Mux6~153_combout\,
	datad => \inst2|Mux6~155_combout\,
	combout => \inst2|Mux6~156_combout\);

-- Location: LCCOMB_X36_Y34_N22
\inst2|Mux6~143\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~143_combout\ = (\inst2|auxA\(7)) # ((\inst2|auxA\(2)) # ((\inst2|auxA\(1) & \inst2|auxA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(1),
	datab => \inst2|auxA\(0),
	datac => \inst2|auxA\(7),
	datad => \inst2|auxA\(2),
	combout => \inst2|Mux6~143_combout\);

-- Location: LCCOMB_X36_Y34_N10
\inst2|Mux6~141\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~141_combout\ = (\inst2|auxA\(1) & ((\inst2|auxA\(2)) # (!\inst2|auxA\(6)))) # (!\inst2|auxA\(1) & (!\inst2|auxA\(6) & \inst2|auxA\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(1),
	datac => \inst2|auxA\(6),
	datad => \inst2|auxA\(2),
	combout => \inst2|Mux6~141_combout\);

-- Location: LCCOMB_X36_Y34_N28
\inst2|Mux6~142\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~142_combout\ = (\inst2|auxA\(5) & (((\inst2|auxA\(6))))) # (!\inst2|auxA\(5) & (!\inst2|auxA\(7) & (\inst2|auxA\(6) $ (\inst2|Mux6~141_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(5),
	datab => \inst2|auxA\(7),
	datac => \inst2|auxA\(6),
	datad => \inst2|Mux6~141_combout\,
	combout => \inst2|Mux6~142_combout\);

-- Location: LCCOMB_X36_Y34_N4
\inst2|Mux6~144\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~144_combout\ = (\inst2|auxA\(5) & ((\inst2|Mux6~142_combout\ & ((\inst2|Mux6~143_combout\))) # (!\inst2|Mux6~142_combout\ & (\inst2|auxA\(7))))) # (!\inst2|auxA\(5) & (((\inst2|Mux6~142_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(5),
	datab => \inst2|auxA\(7),
	datac => \inst2|Mux6~143_combout\,
	datad => \inst2|Mux6~142_combout\,
	combout => \inst2|Mux6~144_combout\);

-- Location: LCCOMB_X37_Y34_N4
\inst2|Mux6~148\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~148_combout\ = (\inst2|auxA\(0) & ((\inst2|auxA\(6)) # ((\inst2|auxA\(1) & \inst2|auxA\(2))))) # (!\inst2|auxA\(0) & (\inst2|auxA\(6) & ((\inst2|auxA\(1)) # (\inst2|auxA\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(0),
	datab => \inst2|auxA\(1),
	datac => \inst2|auxA\(6),
	datad => \inst2|auxA\(2),
	combout => \inst2|Mux6~148_combout\);

-- Location: LCCOMB_X37_Y34_N26
\inst2|Mux6~149\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~149_combout\ = (\inst2|auxA\(6) & (\inst2|auxA\(1) & \inst2|auxA\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|auxA\(6),
	datac => \inst2|auxA\(1),
	datad => \inst2|auxA\(2),
	combout => \inst2|Mux6~149_combout\);

-- Location: LCCOMB_X37_Y34_N28
\inst2|Mux6~150\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~150_combout\ = (\inst2|auxA\(7) & ((\inst2|auxA\(5)) # ((!\inst2|Mux6~149_combout\)))) # (!\inst2|auxA\(7) & (!\inst2|auxA\(5) & ((\inst2|Mux6~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(5),
	datac => \inst2|Mux6~149_combout\,
	datad => \inst2|Mux6~105_combout\,
	combout => \inst2|Mux6~150_combout\);

-- Location: LCCOMB_X37_Y34_N30
\inst2|Mux6~151\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~151_combout\ = (\inst2|auxA\(5) & ((\inst2|Mux6~150_combout\ & (\inst2|Mux5~11_combout\)) # (!\inst2|Mux6~150_combout\ & ((!\inst2|Mux6~148_combout\))))) # (!\inst2|auxA\(5) & (((\inst2|Mux6~150_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux5~11_combout\,
	datab => \inst2|auxA\(5),
	datac => \inst2|Mux6~148_combout\,
	datad => \inst2|Mux6~150_combout\,
	combout => \inst2|Mux6~151_combout\);

-- Location: LCCOMB_X37_Y34_N8
\inst2|Mux6~146\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~146_combout\ = (\inst2|auxA\(6) & (((!\inst2|auxA\(0) & !\inst2|auxA\(1))) # (!\inst2|auxA\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(0),
	datab => \inst2|auxA\(2),
	datac => \inst2|auxA\(6),
	datad => \inst2|auxA\(1),
	combout => \inst2|Mux6~146_combout\);

-- Location: LCCOMB_X37_Y34_N18
\inst2|Mux6~145\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~145_combout\ = (!\inst2|auxA\(7) & (!\inst2|auxA\(5) & ((\inst2|auxA\(6)) # (!\inst2|Mux6~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(5),
	datac => \inst2|auxA\(6),
	datad => \inst2|Mux6~11_combout\,
	combout => \inst2|Mux6~145_combout\);

-- Location: LCCOMB_X37_Y34_N2
\inst2|Mux6~147\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~147_combout\ = (\inst2|Mux6~145_combout\) # ((!\inst2|auxA\(7) & (\inst2|auxA\(5) & \inst2|Mux6~146_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(5),
	datac => \inst2|Mux6~146_combout\,
	datad => \inst2|Mux6~145_combout\,
	combout => \inst2|Mux6~147_combout\);

-- Location: LCCOMB_X37_Y34_N16
\inst2|Mux6~152\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~152_combout\ = (\inst2|auxA\(3) & (\inst2|auxA\(8))) # (!\inst2|auxA\(3) & ((\inst2|auxA\(8) & ((\inst2|Mux6~147_combout\))) # (!\inst2|auxA\(8) & (\inst2|Mux6~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(3),
	datab => \inst2|auxA\(8),
	datac => \inst2|Mux6~151_combout\,
	datad => \inst2|Mux6~147_combout\,
	combout => \inst2|Mux6~152_combout\);

-- Location: LCCOMB_X36_Y34_N26
\inst2|Mux6~157\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~157_combout\ = (\inst2|auxA\(3) & ((\inst2|Mux6~152_combout\ & (\inst2|Mux6~156_combout\)) # (!\inst2|Mux6~152_combout\ & ((\inst2|Mux6~144_combout\))))) # (!\inst2|auxA\(3) & (((\inst2|Mux6~152_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(3),
	datab => \inst2|Mux6~156_combout\,
	datac => \inst2|Mux6~144_combout\,
	datad => \inst2|Mux6~152_combout\,
	combout => \inst2|Mux6~157_combout\);

-- Location: LCCOMB_X37_Y36_N28
\inst2|Mux6~158\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~158_combout\ = (\inst2|auxA\(9) & ((\inst2|auxA\(4)) # ((\inst2|Mux6~140_combout\)))) # (!\inst2|auxA\(9) & (!\inst2|auxA\(4) & ((\inst2|Mux6~157_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(9),
	datab => \inst2|auxA\(4),
	datac => \inst2|Mux6~140_combout\,
	datad => \inst2|Mux6~157_combout\,
	combout => \inst2|Mux6~158_combout\);

-- Location: LCCOMB_X37_Y36_N2
\inst2|Mux6~159\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~159_combout\ = (\inst2|auxA\(4) & ((\inst2|Mux6~158_combout\ & (\inst2|Mux6~171_combout\)) # (!\inst2|Mux6~158_combout\ & ((\inst2|Mux6~136_combout\))))) # (!\inst2|auxA\(4) & (((\inst2|Mux6~158_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux6~171_combout\,
	datab => \inst2|auxA\(4),
	datac => \inst2|Mux6~136_combout\,
	datad => \inst2|Mux6~158_combout\,
	combout => \inst2|Mux6~159_combout\);

-- Location: LCCOMB_X37_Y36_N0
\inst2|Mux6~164\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~164_combout\ = (\inst2|auxA\(10) & (\inst2|Mux6~70_combout\)) # (!\inst2|auxA\(10) & ((\inst2|Mux6~159_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(10),
	datac => \inst2|Mux6~70_combout\,
	datad => \inst2|Mux6~159_combout\,
	combout => \inst2|Mux6~164_combout\);

-- Location: LCCOMB_X37_Y36_N6
\inst2|Mux6~165\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~165_combout\ = (\inst2|auxA\(11) & (!\inst2|auxA\(10) & (\inst2|Mux6~117_combout\))) # (!\inst2|auxA\(11) & (((\inst2|Mux6~164_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(10),
	datab => \inst2|auxA\(11),
	datac => \inst2|Mux6~117_combout\,
	datad => \inst2|Mux6~164_combout\,
	combout => \inst2|Mux6~165_combout\);

-- Location: LCCOMB_X36_Y34_N30
\inst2|Mux7~182\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~182_combout\ = (\inst2|auxA\(1) & ((\inst2|auxA\(4) & (\inst2|auxA\(6) $ (!\inst2|auxA\(5)))) # (!\inst2|auxA\(4) & (\inst2|auxA\(6) & !\inst2|auxA\(5))))) # (!\inst2|auxA\(1) & (\inst2|auxA\(5) & (\inst2|auxA\(4) $ (\inst2|auxA\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(1),
	datab => \inst2|auxA\(4),
	datac => \inst2|auxA\(6),
	datad => \inst2|auxA\(5),
	combout => \inst2|Mux7~182_combout\);

-- Location: LCCOMB_X36_Y34_N20
\inst2|Mux7~181\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~181_combout\ = \inst2|auxA\(6) $ (((\inst2|auxA\(1) & (!\inst2|auxA\(4) & \inst2|auxA\(5))) # (!\inst2|auxA\(1) & (\inst2|auxA\(4) & !\inst2|auxA\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(1),
	datab => \inst2|auxA\(4),
	datac => \inst2|auxA\(6),
	datad => \inst2|auxA\(5),
	combout => \inst2|Mux7~181_combout\);

-- Location: LCCOMB_X36_Y34_N8
\inst2|Mux7~183\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~183_combout\ = (\inst2|Mux7~182_combout\ & ((\inst2|auxA\(1)) # ((!\inst2|auxA\(0))))) # (!\inst2|Mux7~182_combout\ & (\inst2|Mux7~181_combout\ & ((\inst2|auxA\(0)) # (!\inst2|auxA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(1),
	datab => \inst2|auxA\(0),
	datac => \inst2|Mux7~182_combout\,
	datad => \inst2|Mux7~181_combout\,
	combout => \inst2|Mux7~183_combout\);

-- Location: LCCOMB_X36_Y34_N2
\inst2|Mux7~184\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~184_combout\ = (\inst2|Mux7~182_combout\ & (!\inst2|Mux7~181_combout\ & (\inst2|auxA\(1) $ (!\inst2|auxA\(0))))) # (!\inst2|Mux7~182_combout\ & (\inst2|auxA\(1) & (!\inst2|auxA\(0) & \inst2|Mux7~181_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(1),
	datab => \inst2|auxA\(0),
	datac => \inst2|Mux7~182_combout\,
	datad => \inst2|Mux7~181_combout\,
	combout => \inst2|Mux7~184_combout\);

-- Location: LCCOMB_X36_Y34_N16
\inst2|Mux7~185\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~185_combout\ = \inst2|Mux7~183_combout\ $ (((!\inst2|auxA\(2) & !\inst2|Mux7~184_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|auxA\(2),
	datac => \inst2|Mux7~183_combout\,
	datad => \inst2|Mux7~184_combout\,
	combout => \inst2|Mux7~185_combout\);

-- Location: LCCOMB_X42_Y35_N16
\inst2|Mux7~166\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~166_combout\ = (\inst2|auxA\(5) & (\inst2|auxA\(6) $ (((!\inst2|auxA\(1)) # (!\inst2|auxA\(0)))))) # (!\inst2|auxA\(5) & (\inst2|auxA\(6) & ((\inst2|auxA\(0)) # (\inst2|auxA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(0),
	datac => \inst2|auxA\(1),
	datad => \inst2|auxA\(5),
	combout => \inst2|Mux7~166_combout\);

-- Location: LCCOMB_X42_Y35_N8
\inst2|Mux7~170\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~170_combout\ = (\inst2|auxA\(6) & (\inst2|auxA\(0) & (\inst2|auxA\(1) & !\inst2|auxA\(5)))) # (!\inst2|auxA\(6) & (((\inst2|auxA\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(0),
	datac => \inst2|auxA\(1),
	datad => \inst2|auxA\(5),
	combout => \inst2|Mux7~170_combout\);

-- Location: LCCOMB_X42_Y35_N22
\inst2|Mux7~167\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~167_combout\ = (\inst2|auxA\(6) & (!\inst2|auxA\(5) & ((\inst2|auxA\(0)) # (\inst2|auxA\(1))))) # (!\inst2|auxA\(6) & (\inst2|auxA\(5) $ (((\inst2|auxA\(0) & \inst2|auxA\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(0),
	datac => \inst2|auxA\(1),
	datad => \inst2|auxA\(5),
	combout => \inst2|Mux7~167_combout\);

-- Location: LCCOMB_X42_Y35_N28
\inst2|Mux7~168\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~168_combout\ = ((\inst2|auxA\(1) & \inst2|auxA\(6))) # (!\inst2|auxA\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|auxA\(1),
	datac => \inst2|auxA\(6),
	datad => \inst2|auxA\(5),
	combout => \inst2|Mux7~168_combout\);

-- Location: LCCOMB_X42_Y35_N18
\inst2|Mux7~169\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~169_combout\ = (\inst2|auxA\(4) & (\inst2|auxA\(2))) # (!\inst2|auxA\(4) & ((\inst2|auxA\(2) & (!\inst2|Mux7~167_combout\)) # (!\inst2|auxA\(2) & ((\inst2|Mux7~168_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(4),
	datab => \inst2|auxA\(2),
	datac => \inst2|Mux7~167_combout\,
	datad => \inst2|Mux7~168_combout\,
	combout => \inst2|Mux7~169_combout\);

-- Location: LCCOMB_X42_Y35_N2
\inst2|Mux7~171\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~171_combout\ = (\inst2|auxA\(4) & ((\inst2|Mux7~169_combout\ & ((\inst2|Mux7~170_combout\))) # (!\inst2|Mux7~169_combout\ & (!\inst2|Mux7~166_combout\)))) # (!\inst2|auxA\(4) & (((\inst2|Mux7~169_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(4),
	datab => \inst2|Mux7~166_combout\,
	datac => \inst2|Mux7~170_combout\,
	datad => \inst2|Mux7~169_combout\,
	combout => \inst2|Mux7~171_combout\);

-- Location: LCCOMB_X39_Y36_N8
\inst2|Mux7~186\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~186_combout\ = (\inst2|Mux7~180_combout\ & (((\inst2|Mux7~185_combout\)) # (!\inst2|auxA\(7)))) # (!\inst2|Mux7~180_combout\ & (\inst2|auxA\(7) & ((\inst2|Mux7~171_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux7~180_combout\,
	datab => \inst2|auxA\(7),
	datac => \inst2|Mux7~185_combout\,
	datad => \inst2|Mux7~171_combout\,
	combout => \inst2|Mux7~186_combout\);

-- Location: LCCOMB_X39_Y34_N0
\inst2|Mux7~98\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~98_combout\ = (\inst2|auxA\(2) & ((\inst2|auxA\(8)) # ((\inst2|auxA\(0) & \inst2|auxA\(1))))) # (!\inst2|auxA\(2) & (\inst2|auxA\(8) & ((\inst2|auxA\(0)) # (\inst2|auxA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(2),
	datab => \inst2|auxA\(8),
	datac => \inst2|auxA\(0),
	datad => \inst2|auxA\(1),
	combout => \inst2|Mux7~98_combout\);

-- Location: LCCOMB_X39_Y36_N16
\inst2|Mux7~99\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~99_combout\ = (\inst2|Mux6~11_combout\ & ((\inst2|auxA\(8) & (!\inst2|auxA\(7))) # (!\inst2|auxA\(8) & ((\inst2|auxA\(6)))))) # (!\inst2|Mux6~11_combout\ & (((\inst2|auxA\(6))) # (!\inst2|auxA\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(6),
	datac => \inst2|auxA\(8),
	datad => \inst2|Mux6~11_combout\,
	combout => \inst2|Mux7~99_combout\);

-- Location: LCCOMB_X39_Y36_N30
\inst2|Mux7~100\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~100_combout\ = (\inst2|auxA\(7) & (((\inst2|Mux7~99_combout\)))) # (!\inst2|auxA\(7) & ((\inst2|auxA\(6) & (\inst2|Mux7~98_combout\)) # (!\inst2|auxA\(6) & ((\inst2|Mux7~99_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(6),
	datac => \inst2|Mux7~98_combout\,
	datad => \inst2|Mux7~99_combout\,
	combout => \inst2|Mux7~100_combout\);

-- Location: LCCOMB_X39_Y35_N18
\inst2|Mux7~106\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~106_combout\ = (\inst2|auxA\(2) & (\inst2|auxA\(0) & (\inst2|auxA\(1) & !\inst2|auxA\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(2),
	datab => \inst2|auxA\(0),
	datac => \inst2|auxA\(1),
	datad => \inst2|auxA\(7),
	combout => \inst2|Mux7~106_combout\);

-- Location: LCCOMB_X39_Y35_N26
\inst2|Mux7~103\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~103_combout\ = (\inst2|auxA\(2) & (!\inst2|auxA\(7) & ((\inst2|auxA\(0)) # (\inst2|auxA\(1))))) # (!\inst2|auxA\(2) & (\inst2|auxA\(7) & ((!\inst2|auxA\(1)) # (!\inst2|auxA\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(2),
	datab => \inst2|auxA\(0),
	datac => \inst2|auxA\(1),
	datad => \inst2|auxA\(7),
	combout => \inst2|Mux7~103_combout\);

-- Location: LCCOMB_X39_Y35_N28
\inst2|Mux7~161\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~161_combout\ = (\inst2|auxA\(6) & ((\inst2|auxA\(8) & (\inst2|Mux7~103_combout\)) # (!\inst2|auxA\(8) & ((!\inst2|auxA\(7)))))) # (!\inst2|auxA\(6) & (\inst2|auxA\(8) & ((\inst2|auxA\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(8),
	datac => \inst2|Mux7~103_combout\,
	datad => \inst2|auxA\(7),
	combout => \inst2|Mux7~161_combout\);

-- Location: LCCOMB_X39_Y36_N20
\inst2|Mux7~162\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~162_combout\ = (\inst2|Mux7~161_combout\) # ((!\inst2|auxA\(8) & (!\inst2|auxA\(6) & !\inst2|Mux7~106_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|auxA\(6),
	datac => \inst2|Mux7~106_combout\,
	datad => \inst2|Mux7~161_combout\,
	combout => \inst2|Mux7~162_combout\);

-- Location: LCCOMB_X39_Y36_N14
\inst2|Mux7~163\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~163_combout\ = (\inst2|auxA\(5) & ((\inst2|auxA\(4)) # ((!\inst2|Mux7~100_combout\)))) # (!\inst2|auxA\(5) & (!\inst2|auxA\(4) & ((\inst2|Mux7~162_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(5),
	datab => \inst2|auxA\(4),
	datac => \inst2|Mux7~100_combout\,
	datad => \inst2|Mux7~162_combout\,
	combout => \inst2|Mux7~163_combout\);

-- Location: LCCOMB_X39_Y34_N2
\inst2|Mux7~107\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~107_combout\ = (\inst2|auxA\(7) & ((\inst2|Equal0~3_combout\) # ((!\inst2|auxA\(8))))) # (!\inst2|auxA\(7) & (((!\inst2|auxA\(8) & \inst2|Mux6~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|Equal0~3_combout\,
	datac => \inst2|auxA\(8),
	datad => \inst2|Mux6~54_combout\,
	combout => \inst2|Mux7~107_combout\);

-- Location: LCCOMB_X39_Y36_N6
\inst2|Mux7~108\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~108_combout\ = (\inst2|auxA\(6) & (\inst2|Mux7~106_combout\)) # (!\inst2|auxA\(6) & ((\inst2|Mux7~107_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|auxA\(6),
	datac => \inst2|Mux7~106_combout\,
	datad => \inst2|Mux7~107_combout\,
	combout => \inst2|Mux7~108_combout\);

-- Location: LCCOMB_X39_Y36_N4
\inst2|Mux7~164\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~164_combout\ = (\inst2|auxA\(4) & ((\inst2|Mux7~163_combout\ & ((\inst2|Mux7~108_combout\))) # (!\inst2|Mux7~163_combout\ & (!\inst2|Mux7~97_combout\)))) # (!\inst2|auxA\(4) & (((\inst2|Mux7~163_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux7~97_combout\,
	datab => \inst2|auxA\(4),
	datac => \inst2|Mux7~163_combout\,
	datad => \inst2|Mux7~108_combout\,
	combout => \inst2|Mux7~164_combout\);

-- Location: LCCOMB_X36_Y38_N14
\inst2|Mux7~155\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~155_combout\ = (\inst2|auxA\(4) & (!\inst2|auxA\(2) & ((\inst2|auxA\(6))))) # (!\inst2|auxA\(4) & (\inst2|auxA\(2) $ (((\inst2|auxA\(0) & \inst2|auxA\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(4),
	datab => \inst2|auxA\(2),
	datac => \inst2|auxA\(0),
	datad => \inst2|auxA\(6),
	combout => \inst2|Mux7~155_combout\);

-- Location: LCCOMB_X36_Y38_N12
\inst2|Mux7~156\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~156_combout\ = (\inst2|auxA\(2) & (\inst2|auxA\(6) & ((\inst2|auxA\(4)) # (!\inst2|auxA\(0))))) # (!\inst2|auxA\(2) & (\inst2|auxA\(4) $ (((!\inst2|auxA\(0) & \inst2|auxA\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(2),
	datab => \inst2|auxA\(0),
	datac => \inst2|auxA\(4),
	datad => \inst2|auxA\(6),
	combout => \inst2|Mux7~156_combout\);

-- Location: LCCOMB_X36_Y38_N8
\inst2|Mux7~158\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~158_combout\ = (\inst2|Mux7~156_combout\ & (\inst2|Mux7~155_combout\ $ (((!\inst2|auxA\(0)) # (!\inst2|auxA\(1)))))) # (!\inst2|Mux7~156_combout\ & (\inst2|Mux7~155_combout\ & ((\inst2|auxA\(1)) # (\inst2|auxA\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(1),
	datab => \inst2|auxA\(0),
	datac => \inst2|Mux7~155_combout\,
	datad => \inst2|Mux7~156_combout\,
	combout => \inst2|Mux7~158_combout\);

-- Location: LCCOMB_X36_Y38_N6
\inst2|Mux7~157\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~157_combout\ = (\inst2|auxA\(0) & (\inst2|auxA\(1) $ (((\inst2|Mux7~156_combout\))))) # (!\inst2|auxA\(0) & ((\inst2|auxA\(1) & (!\inst2|Mux7~155_combout\)) # (!\inst2|auxA\(1) & (\inst2|Mux7~155_combout\ & !\inst2|Mux7~156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(1),
	datab => \inst2|auxA\(0),
	datac => \inst2|Mux7~155_combout\,
	datad => \inst2|Mux7~156_combout\,
	combout => \inst2|Mux7~157_combout\);

-- Location: LCCOMB_X36_Y38_N22
\inst2|Mux7~159\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~159_combout\ = \inst2|Mux7~158_combout\ $ (((!\inst2|auxA\(5) & !\inst2|Mux7~157_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(5),
	datac => \inst2|Mux7~158_combout\,
	datad => \inst2|Mux7~157_combout\,
	combout => \inst2|Mux7~159_combout\);

-- Location: LCCOMB_X42_Y35_N30
\inst2|Mux7~151\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~151_combout\ = (\inst2|auxA\(6) & (!\inst2|auxA\(5) & ((!\inst2|auxA\(4)) # (!\inst2|auxA\(0))))) # (!\inst2|auxA\(6) & (\inst2|auxA\(5) & ((\inst2|auxA\(4)) # (!\inst2|auxA\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(0),
	datac => \inst2|auxA\(5),
	datad => \inst2|auxA\(4),
	combout => \inst2|Mux7~151_combout\);

-- Location: LCCOMB_X42_Y35_N12
\inst2|Mux7~152\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~152_combout\ = (\inst2|auxA\(6) & (((!\inst2|auxA\(0) & !\inst2|auxA\(4))) # (!\inst2|auxA\(5)))) # (!\inst2|auxA\(6) & (((\inst2|auxA\(5)) # (\inst2|auxA\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(0),
	datac => \inst2|auxA\(5),
	datad => \inst2|auxA\(4),
	combout => \inst2|Mux7~152_combout\);

-- Location: LCCOMB_X42_Y35_N10
\inst2|Mux7~153\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~153_combout\ = ((\inst2|auxA\(1) & (\inst2|Mux7~151_combout\)) # (!\inst2|auxA\(1) & ((\inst2|Mux7~152_combout\)))) # (!\inst2|auxA\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(1),
	datab => \inst2|auxA\(2),
	datac => \inst2|Mux7~151_combout\,
	datad => \inst2|Mux7~152_combout\,
	combout => \inst2|Mux7~153_combout\);

-- Location: LCCOMB_X36_Y38_N4
\inst2|Mux7~146\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~146_combout\ = (\inst2|auxA\(6) & (\inst2|auxA\(2))) # (!\inst2|auxA\(6) & (!\inst2|auxA\(2) & !\inst2|auxA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datac => \inst2|auxA\(2),
	datad => \inst2|auxA\(1),
	combout => \inst2|Mux7~146_combout\);

-- Location: LCCOMB_X36_Y38_N2
\inst2|Mux7~147\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~147_combout\ = (\inst2|auxA\(2) & (((!\inst2|auxA\(1)) # (!\inst2|auxA\(0))) # (!\inst2|auxA\(6)))) # (!\inst2|auxA\(2) & (((\inst2|auxA\(0)) # (\inst2|auxA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(2),
	datac => \inst2|auxA\(0),
	datad => \inst2|auxA\(1),
	combout => \inst2|Mux7~147_combout\);

-- Location: LCCOMB_X36_Y38_N20
\inst2|Mux7~148\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~148_combout\ = (\inst2|auxA\(4) & (\inst2|auxA\(5))) # (!\inst2|auxA\(4) & ((\inst2|auxA\(5) & (!\inst2|Mux7~146_combout\)) # (!\inst2|auxA\(5) & ((!\inst2|Mux7~147_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(4),
	datab => \inst2|auxA\(5),
	datac => \inst2|Mux7~146_combout\,
	datad => \inst2|Mux7~147_combout\,
	combout => \inst2|Mux7~148_combout\);

-- Location: LCCOMB_X39_Y36_N2
\inst2|Mux7~150\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~150_combout\ = (\inst2|auxA\(4) & ((\inst2|Mux7~148_combout\ & (!\inst2|Mux7~149_combout\)) # (!\inst2|Mux7~148_combout\ & ((\inst2|Mux6~119_combout\))))) # (!\inst2|auxA\(4) & (((\inst2|Mux7~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux7~149_combout\,
	datab => \inst2|auxA\(4),
	datac => \inst2|Mux6~119_combout\,
	datad => \inst2|Mux7~148_combout\,
	combout => \inst2|Mux7~150_combout\);

-- Location: LCCOMB_X39_Y36_N0
\inst2|Mux7~154\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~154_combout\ = (\inst2|auxA\(7) & ((\inst2|auxA\(8)) # ((\inst2|Mux7~150_combout\)))) # (!\inst2|auxA\(7) & (!\inst2|auxA\(8) & (\inst2|Mux7~153_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(8),
	datac => \inst2|Mux7~153_combout\,
	datad => \inst2|Mux7~150_combout\,
	combout => \inst2|Mux7~154_combout\);

-- Location: LCCOMB_X39_Y36_N10
\inst2|Mux7~160\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~160_combout\ = (\inst2|auxA\(8) & ((\inst2|Mux7~154_combout\ & ((\inst2|Mux7~159_combout\))) # (!\inst2|Mux7~154_combout\ & (\inst2|Mux7~145_combout\)))) # (!\inst2|auxA\(8) & (((\inst2|Mux7~154_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux7~145_combout\,
	datab => \inst2|auxA\(8),
	datac => \inst2|Mux7~159_combout\,
	datad => \inst2|Mux7~154_combout\,
	combout => \inst2|Mux7~160_combout\);

-- Location: LCCOMB_X39_Y36_N18
\inst2|Mux7~165\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~165_combout\ = (\inst2|auxA\(3) & (\inst2|auxA\(9))) # (!\inst2|auxA\(3) & ((\inst2|auxA\(9) & ((\inst2|Mux7~160_combout\))) # (!\inst2|auxA\(9) & (\inst2|Mux7~164_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(3),
	datab => \inst2|auxA\(9),
	datac => \inst2|Mux7~164_combout\,
	datad => \inst2|Mux7~160_combout\,
	combout => \inst2|Mux7~165_combout\);

-- Location: LCCOMB_X39_Y36_N22
\inst2|Mux7~187\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~187_combout\ = (\inst2|auxA\(3) & ((\inst2|Mux7~165_combout\ & ((\inst2|Mux7~186_combout\))) # (!\inst2|Mux7~165_combout\ & (!\inst2|Mux7~139_combout\)))) # (!\inst2|auxA\(3) & (((\inst2|Mux7~165_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux7~139_combout\,
	datab => \inst2|auxA\(3),
	datac => \inst2|Mux7~186_combout\,
	datad => \inst2|Mux7~165_combout\,
	combout => \inst2|Mux7~187_combout\);

-- Location: LCCOMB_X38_Y33_N14
\inst2|Mux7~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~69_combout\ = (\inst2|auxA\(8) & ((\inst2|auxA\(5)))) # (!\inst2|auxA\(8) & (\inst2|auxA\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datac => \inst2|auxA\(5),
	datad => \inst2|auxA\(8),
	combout => \inst2|Mux7~69_combout\);

-- Location: LCCOMB_X38_Y33_N4
\inst2|Mux7~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~70_combout\ = (\inst2|auxA\(8) & ((\inst2|auxA\(6) & ((!\inst2|auxA\(5)))) # (!\inst2|auxA\(6) & (\inst2|auxA\(7))))) # (!\inst2|auxA\(8) & ((\inst2|auxA\(5)) # ((\inst2|auxA\(6) & \inst2|auxA\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(7),
	datac => \inst2|auxA\(5),
	datad => \inst2|auxA\(8),
	combout => \inst2|Mux7~70_combout\);

-- Location: LCCOMB_X38_Y33_N10
\inst2|Mux7~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~71_combout\ = (\inst2|auxA\(0) & (\inst2|Mux7~70_combout\ & \inst2|auxA\(1))) # (!\inst2|auxA\(0) & ((\inst2|Mux7~70_combout\) # (\inst2|auxA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(0),
	datac => \inst2|Mux7~70_combout\,
	datad => \inst2|auxA\(1),
	combout => \inst2|Mux7~71_combout\);

-- Location: LCCOMB_X38_Y33_N20
\inst2|Mux7~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~72_combout\ = (\inst2|auxA\(0) & ((\inst2|auxA\(7)) # (\inst2|Mux7~69_combout\ $ (!\inst2|Mux7~71_combout\)))) # (!\inst2|auxA\(0) & (\inst2|Mux7~71_combout\ & ((\inst2|auxA\(7)) # (!\inst2|Mux7~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(0),
	datab => \inst2|auxA\(7),
	datac => \inst2|Mux7~69_combout\,
	datad => \inst2|Mux7~71_combout\,
	combout => \inst2|Mux7~72_combout\);

-- Location: LCCOMB_X39_Y32_N16
\inst2|Mux7~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~66_combout\ = (\inst2|auxA\(1)) # ((\inst2|auxA\(5) & ((\inst2|auxA\(0)) # (\inst2|auxA\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(0),
	datab => \inst2|auxA\(7),
	datac => \inst2|auxA\(1),
	datad => \inst2|auxA\(5),
	combout => \inst2|Mux7~66_combout\);

-- Location: LCCOMB_X39_Y32_N4
\inst2|Mux7~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~64_combout\ = (\inst2|auxA\(7) & (((\inst2|auxA\(0) & \inst2|auxA\(1))) # (!\inst2|auxA\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(0),
	datab => \inst2|auxA\(7),
	datac => \inst2|auxA\(1),
	datad => \inst2|auxA\(5),
	combout => \inst2|Mux7~64_combout\);

-- Location: LCCOMB_X39_Y32_N18
\inst2|Mux7~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~63_combout\ = (\inst2|auxA\(5) & (!\inst2|auxA\(7) & (\inst2|auxA\(1) & \inst2|auxA\(0)))) # (!\inst2|auxA\(5) & (\inst2|auxA\(7) & ((!\inst2|auxA\(0)) # (!\inst2|auxA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(5),
	datab => \inst2|auxA\(7),
	datac => \inst2|auxA\(1),
	datad => \inst2|auxA\(0),
	combout => \inst2|Mux7~63_combout\);

-- Location: LCCOMB_X39_Y32_N30
\inst2|Mux7~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~65_combout\ = (\inst2|auxA\(8) & ((\inst2|auxA\(6)) # ((\inst2|Mux7~63_combout\)))) # (!\inst2|auxA\(8) & (!\inst2|auxA\(6) & (!\inst2|Mux7~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|auxA\(6),
	datac => \inst2|Mux7~64_combout\,
	datad => \inst2|Mux7~63_combout\,
	combout => \inst2|Mux7~65_combout\);

-- Location: LCCOMB_X39_Y32_N12
\inst2|Mux7~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~62_combout\ = (\inst2|auxA\(0) & (\inst2|auxA\(5) & (\inst2|auxA\(7) $ (\inst2|auxA\(1))))) # (!\inst2|auxA\(0) & (\inst2|auxA\(7) & ((\inst2|auxA\(5)) # (!\inst2|auxA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(0),
	datab => \inst2|auxA\(7),
	datac => \inst2|auxA\(1),
	datad => \inst2|auxA\(5),
	combout => \inst2|Mux7~62_combout\);

-- Location: LCCOMB_X39_Y32_N26
\inst2|Mux7~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~67_combout\ = (\inst2|auxA\(6) & ((\inst2|Mux7~65_combout\ & (\inst2|Mux7~66_combout\)) # (!\inst2|Mux7~65_combout\ & ((!\inst2|Mux7~62_combout\))))) # (!\inst2|auxA\(6) & (((\inst2|Mux7~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|Mux7~66_combout\,
	datac => \inst2|Mux7~65_combout\,
	datad => \inst2|Mux7~62_combout\,
	combout => \inst2|Mux7~67_combout\);

-- Location: LCCOMB_X39_Y32_N28
\inst2|Mux7~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~60_combout\ = (\inst2|auxA\(8) & ((\inst2|auxA\(6) & ((\inst2|auxA\(5)))) # (!\inst2|auxA\(6) & (!\inst2|auxA\(7) & !\inst2|auxA\(5))))) # (!\inst2|auxA\(8) & (\inst2|auxA\(6) $ ((\inst2|auxA\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(7),
	datac => \inst2|auxA\(8),
	datad => \inst2|auxA\(5),
	combout => \inst2|Mux7~60_combout\);

-- Location: LCCOMB_X39_Y32_N22
\inst2|Mux7~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~61_combout\ = (\inst2|auxA\(6) & (!\inst2|auxA\(7) & (\inst2|auxA\(8) $ (!\inst2|auxA\(5))))) # (!\inst2|auxA\(6) & (\inst2|auxA\(7) & (\inst2|auxA\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(7),
	datac => \inst2|auxA\(8),
	datad => \inst2|auxA\(5),
	combout => \inst2|Mux7~61_combout\);

-- Location: LCCOMB_X39_Y32_N24
\inst2|Mux7~193\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~193_combout\ = (\inst2|auxA\(0) & ((\inst2|Mux7~61_combout\ $ (\inst2|Mux7~60_combout\)) # (!\inst2|auxA\(1)))) # (!\inst2|auxA\(0) & ((\inst2|auxA\(1) $ (\inst2|Mux7~60_combout\)) # (!\inst2|Mux7~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(0),
	datab => \inst2|auxA\(1),
	datac => \inst2|Mux7~61_combout\,
	datad => \inst2|Mux7~60_combout\,
	combout => \inst2|Mux7~193_combout\);

-- Location: LCCOMB_X39_Y32_N6
\inst2|Mux7~194\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~194_combout\ = (\inst2|auxA\(5) & ((\inst2|Mux7~61_combout\ & ((\inst2|Mux7~193_combout\))) # (!\inst2|Mux7~61_combout\ & (!\inst2|Mux7~60_combout\)))) # (!\inst2|auxA\(5) & (\inst2|Mux7~193_combout\ & ((\inst2|Mux7~60_combout\) # 
-- (!\inst2|Mux7~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(5),
	datab => \inst2|Mux7~60_combout\,
	datac => \inst2|Mux7~61_combout\,
	datad => \inst2|Mux7~193_combout\,
	combout => \inst2|Mux7~194_combout\);

-- Location: LCCOMB_X39_Y32_N20
\inst2|Mux7~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~68_combout\ = (\inst2|auxA\(2) & ((\inst2|auxA\(9)) # ((\inst2|Mux7~194_combout\)))) # (!\inst2|auxA\(2) & (!\inst2|auxA\(9) & (\inst2|Mux7~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(2),
	datab => \inst2|auxA\(9),
	datac => \inst2|Mux7~67_combout\,
	datad => \inst2|Mux7~194_combout\,
	combout => \inst2|Mux7~68_combout\);

-- Location: LCCOMB_X39_Y32_N14
\inst2|Mux7~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~73_combout\ = (\inst2|auxA\(9) & ((\inst2|Mux7~68_combout\ & ((\inst2|Mux7~72_combout\))) # (!\inst2|Mux7~68_combout\ & (\inst2|Mux7~59_combout\)))) # (!\inst2|auxA\(9) & (((\inst2|Mux7~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux7~59_combout\,
	datab => \inst2|auxA\(9),
	datac => \inst2|Mux7~72_combout\,
	datad => \inst2|Mux7~68_combout\,
	combout => \inst2|Mux7~73_combout\);

-- Location: LCCOMB_X37_Y38_N8
\inst2|Mux7~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~14_combout\ = (\inst2|auxA\(6) & ((\inst2|auxA\(7)) # ((\inst2|auxA\(0) & !\inst2|auxA\(9))))) # (!\inst2|auxA\(6) & (((\inst2|auxA\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(0),
	datab => \inst2|auxA\(7),
	datac => \inst2|auxA\(9),
	datad => \inst2|auxA\(6),
	combout => \inst2|Mux7~14_combout\);

-- Location: LCCOMB_X37_Y38_N14
\inst2|Mux7~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~13_combout\ = (\inst2|auxA\(0) & ((\inst2|auxA\(7)) # ((!\inst2|auxA\(6) & \inst2|auxA\(9))))) # (!\inst2|auxA\(0) & (\inst2|auxA\(9) $ (((!\inst2|auxA\(7) & \inst2|auxA\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(0),
	datab => \inst2|auxA\(7),
	datac => \inst2|auxA\(6),
	datad => \inst2|auxA\(9),
	combout => \inst2|Mux7~13_combout\);

-- Location: LCCOMB_X37_Y38_N4
\inst2|Mux7~199\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~199_combout\ = (\inst2|auxA\(1) & (((\inst2|Mux7~14_combout\ & \inst2|auxA\(7))) # (!\inst2|Mux7~13_combout\))) # (!\inst2|auxA\(1) & (((\inst2|Mux7~13_combout\)) # (!\inst2|Mux7~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101101011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(1),
	datab => \inst2|Mux7~14_combout\,
	datac => \inst2|Mux7~13_combout\,
	datad => \inst2|auxA\(7),
	combout => \inst2|Mux7~199_combout\);

-- Location: LCCOMB_X37_Y38_N6
\inst2|Mux7~200\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~200_combout\ = (\inst2|Mux7~199_combout\ & ((\inst2|auxA\(8) & ((\inst2|Mux7~14_combout\) # (\inst2|auxA\(7)))) # (!\inst2|auxA\(8) & (!\inst2|Mux7~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|Mux7~14_combout\,
	datac => \inst2|Mux7~199_combout\,
	datad => \inst2|auxA\(7),
	combout => \inst2|Mux7~200_combout\);

-- Location: LCCOMB_X37_Y39_N30
\inst2|Mux7~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~8_combout\ = (\inst2|auxA\(0) & ((\inst2|auxA\(1) & ((\inst2|auxA\(7)) # (\inst2|auxA\(8)))) # (!\inst2|auxA\(1) & (\inst2|auxA\(7) $ (!\inst2|auxA\(8)))))) # (!\inst2|auxA\(0) & (\inst2|auxA\(1) & (\inst2|auxA\(7) & \inst2|auxA\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(0),
	datab => \inst2|auxA\(1),
	datac => \inst2|auxA\(7),
	datad => \inst2|auxA\(8),
	combout => \inst2|Mux7~8_combout\);

-- Location: LCCOMB_X37_Y39_N24
\inst2|Mux7~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~7_combout\ = (\inst2|auxA\(0) & ((\inst2|auxA\(8) & ((!\inst2|auxA\(7)))) # (!\inst2|auxA\(8) & (\inst2|auxA\(1))))) # (!\inst2|auxA\(0) & ((\inst2|auxA\(1) & (!\inst2|auxA\(7))) # (!\inst2|auxA\(1) & ((\inst2|auxA\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(0),
	datab => \inst2|auxA\(1),
	datac => \inst2|auxA\(7),
	datad => \inst2|auxA\(8),
	combout => \inst2|Mux7~7_combout\);

-- Location: LCCOMB_X37_Y39_N14
\inst2|Mux7~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~10_combout\ = (\inst2|auxA\(7) & ((\inst2|Mux7~8_combout\ $ (!\inst2|Mux7~7_combout\)) # (!\inst2|auxA\(6)))) # (!\inst2|auxA\(7) & (((\inst2|Mux7~8_combout\ & \inst2|Mux7~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(6),
	datac => \inst2|Mux7~8_combout\,
	datad => \inst2|Mux7~7_combout\,
	combout => \inst2|Mux7~10_combout\);

-- Location: LCCOMB_X37_Y39_N16
\inst2|Mux7~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~9_combout\ = (\inst2|Mux7~7_combout\ & ((\inst2|auxA\(6) $ (!\inst2|Mux7~8_combout\)))) # (!\inst2|Mux7~7_combout\ & ((\inst2|auxA\(7) & ((\inst2|Mux7~8_combout\))) # (!\inst2|auxA\(7) & (\inst2|auxA\(6) & !\inst2|Mux7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(6),
	datac => \inst2|Mux7~8_combout\,
	datad => \inst2|Mux7~7_combout\,
	combout => \inst2|Mux7~9_combout\);

-- Location: LCCOMB_X37_Y39_N4
\inst2|Mux7~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~11_combout\ = \inst2|Mux7~10_combout\ $ (((\inst2|Mux7~9_combout\) # (!\inst2|auxA\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|auxA\(9),
	datac => \inst2|Mux7~10_combout\,
	datad => \inst2|Mux7~9_combout\,
	combout => \inst2|Mux7~11_combout\);

-- Location: LCCOMB_X37_Y39_N26
\inst2|Mux7~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~4_combout\ = (\inst2|auxA\(9) & (\inst2|auxA\(8) $ (((\inst2|auxA\(0) & \inst2|auxA\(1)))))) # (!\inst2|auxA\(9) & ((\inst2|auxA\(1)) # ((\inst2|auxA\(0) & \inst2|auxA\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(0),
	datab => \inst2|auxA\(9),
	datac => \inst2|auxA\(8),
	datad => \inst2|auxA\(1),
	combout => \inst2|Mux7~4_combout\);

-- Location: LCCOMB_X37_Y39_N28
\inst2|Mux7~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~3_combout\ = (\inst2|auxA\(9) & (!\inst2|auxA\(8) & ((!\inst2|auxA\(1)) # (!\inst2|auxA\(0))))) # (!\inst2|auxA\(9) & (((\inst2|auxA\(8) & \inst2|auxA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(0),
	datab => \inst2|auxA\(9),
	datac => \inst2|auxA\(8),
	datad => \inst2|auxA\(1),
	combout => \inst2|Mux7~3_combout\);

-- Location: LCCOMB_X37_Y39_N8
\inst2|Mux7~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~5_combout\ = (\inst2|auxA\(7) & (\inst2|auxA\(6) & (!\inst2|Mux7~4_combout\))) # (!\inst2|auxA\(7) & (((!\inst2|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(6),
	datac => \inst2|Mux7~4_combout\,
	datad => \inst2|Mux7~3_combout\,
	combout => \inst2|Mux7~5_combout\);

-- Location: LCCOMB_X37_Y39_N2
\inst2|Mux7~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~6_combout\ = (\inst2|Mux7~5_combout\) # ((!\inst2|auxA\(6) & ((\inst2|auxA\(1)) # (!\inst2|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(1),
	datab => \inst2|auxA\(6),
	datac => \inst2|Mux7~5_combout\,
	datad => \inst2|Equal0~1_combout\,
	combout => \inst2|Mux7~6_combout\);

-- Location: LCCOMB_X37_Y39_N6
\inst2|Mux7~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~12_combout\ = (\inst2|auxA\(5) & ((\inst2|auxA\(2)) # ((\inst2|Mux7~6_combout\)))) # (!\inst2|auxA\(5) & (!\inst2|auxA\(2) & (\inst2|Mux7~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(5),
	datab => \inst2|auxA\(2),
	datac => \inst2|Mux7~11_combout\,
	datad => \inst2|Mux7~6_combout\,
	combout => \inst2|Mux7~12_combout\);

-- Location: LCCOMB_X37_Y39_N0
\inst2|Mux7~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~15_combout\ = (\inst2|auxA\(2) & ((\inst2|Mux7~12_combout\ & ((\inst2|Mux7~200_combout\))) # (!\inst2|Mux7~12_combout\ & (\inst2|Mux7~202_combout\)))) # (!\inst2|auxA\(2) & (((\inst2|Mux7~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux7~202_combout\,
	datab => \inst2|auxA\(2),
	datac => \inst2|Mux7~200_combout\,
	datad => \inst2|Mux7~12_combout\,
	combout => \inst2|Mux7~15_combout\);

-- Location: LCCOMB_X38_Y37_N14
\inst2|Mux7~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~18_combout\ = (\inst2|auxA\(8) & (!\inst2|auxA\(7))) # (!\inst2|auxA\(8) & ((\inst2|auxA\(9)) # ((\inst2|auxA\(7) & !\inst2|auxA\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(9),
	datac => \inst2|auxA\(8),
	datad => \inst2|auxA\(0),
	combout => \inst2|Mux7~18_combout\);

-- Location: LCCOMB_X38_Y37_N28
\inst2|Mux7~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~17_combout\ = (!\inst2|auxA\(0) & ((\inst2|auxA\(9) & (\inst2|auxA\(7) & !\inst2|auxA\(8))) # (!\inst2|auxA\(9) & ((\inst2|auxA\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(9),
	datac => \inst2|auxA\(8),
	datad => \inst2|auxA\(0),
	combout => \inst2|Mux7~17_combout\);

-- Location: LCCOMB_X38_Y37_N24
\inst2|Mux7~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~19_combout\ = (\inst2|auxA\(5) & (\inst2|auxA\(6))) # (!\inst2|auxA\(5) & ((\inst2|auxA\(6) & ((\inst2|Mux7~17_combout\))) # (!\inst2|auxA\(6) & (\inst2|Mux7~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(5),
	datab => \inst2|auxA\(6),
	datac => \inst2|Mux7~18_combout\,
	datad => \inst2|Mux7~17_combout\,
	combout => \inst2|Mux7~19_combout\);

-- Location: LCCOMB_X35_Y37_N20
\inst2|Mux7~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~16_combout\ = (\inst2|auxA\(8) & (((!\inst2|auxA\(9))) # (!\inst2|auxA\(7)))) # (!\inst2|auxA\(8) & ((\inst2|auxA\(0) & (\inst2|auxA\(7))) # (!\inst2|auxA\(0) & ((\inst2|auxA\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(9),
	datac => \inst2|auxA\(0),
	datad => \inst2|auxA\(8),
	combout => \inst2|Mux7~16_combout\);

-- Location: LCCOMB_X37_Y37_N10
\inst2|Mux7~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~20_combout\ = (\inst2|auxA\(7) & ((\inst2|auxA\(8)) # ((\inst2|auxA\(0) & !\inst2|auxA\(9))))) # (!\inst2|auxA\(7) & ((\inst2|auxA\(9) & (!\inst2|auxA\(0) & !\inst2|auxA\(8))) # (!\inst2|auxA\(9) & ((\inst2|auxA\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(0),
	datac => \inst2|auxA\(9),
	datad => \inst2|auxA\(8),
	combout => \inst2|Mux7~20_combout\);

-- Location: LCCOMB_X38_Y37_N22
\inst2|Mux7~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~21_combout\ = (\inst2|auxA\(5) & ((\inst2|Mux7~19_combout\ & ((!\inst2|Mux7~20_combout\))) # (!\inst2|Mux7~19_combout\ & (\inst2|Mux7~16_combout\)))) # (!\inst2|auxA\(5) & (\inst2|Mux7~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(5),
	datab => \inst2|Mux7~19_combout\,
	datac => \inst2|Mux7~16_combout\,
	datad => \inst2|Mux7~20_combout\,
	combout => \inst2|Mux7~21_combout\);

-- Location: LCCOMB_X38_Y37_N16
\inst2|Mux7~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~26_combout\ = (\inst2|auxA\(9) & (!\inst2|auxA\(5))) # (!\inst2|auxA\(9) & ((\inst2|auxA\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(5),
	datab => \inst2|auxA\(9),
	datac => \inst2|auxA\(8),
	combout => \inst2|Mux7~26_combout\);

-- Location: LCCOMB_X38_Y37_N20
\inst2|Mux7~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~30_combout\ = (!\inst2|auxA\(5) & (\inst2|auxA\(9) & (\inst2|auxA\(8) & \inst2|auxA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(5),
	datab => \inst2|auxA\(9),
	datac => \inst2|auxA\(8),
	datad => \inst2|auxA\(0),
	combout => \inst2|Mux7~30_combout\);

-- Location: LCCOMB_X38_Y37_N4
\inst2|Mux7~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~28_combout\ = (\inst2|auxA\(0) & (\inst2|auxA\(8) $ (((\inst2|auxA\(9) & \inst2|auxA\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(0),
	datab => \inst2|auxA\(9),
	datac => \inst2|auxA\(8),
	datad => \inst2|auxA\(5),
	combout => \inst2|Mux7~28_combout\);

-- Location: LCCOMB_X38_Y37_N6
\inst2|Mux7~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~27_combout\ = (\inst2|auxA\(0) & (\inst2|auxA\(9) $ (((\inst2|auxA\(8)) # (\inst2|auxA\(5)))))) # (!\inst2|auxA\(0) & ((\inst2|auxA\(9) & (!\inst2|auxA\(8))) # (!\inst2|auxA\(9) & ((\inst2|auxA\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(0),
	datab => \inst2|auxA\(9),
	datac => \inst2|auxA\(8),
	datad => \inst2|auxA\(5),
	combout => \inst2|Mux7~27_combout\);

-- Location: LCCOMB_X38_Y37_N18
\inst2|Mux7~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~29_combout\ = (\inst2|auxA\(7) & ((\inst2|auxA\(6)) # ((!\inst2|Mux7~27_combout\)))) # (!\inst2|auxA\(7) & (!\inst2|auxA\(6) & (\inst2|Mux7~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(6),
	datac => \inst2|Mux7~28_combout\,
	datad => \inst2|Mux7~27_combout\,
	combout => \inst2|Mux7~29_combout\);

-- Location: LCCOMB_X38_Y37_N26
\inst2|Mux7~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~31_combout\ = (\inst2|auxA\(6) & ((\inst2|Mux7~29_combout\ & ((!\inst2|Mux7~30_combout\))) # (!\inst2|Mux7~29_combout\ & (\inst2|Mux7~26_combout\)))) # (!\inst2|auxA\(6) & (((\inst2|Mux7~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|Mux7~26_combout\,
	datac => \inst2|Mux7~30_combout\,
	datad => \inst2|Mux7~29_combout\,
	combout => \inst2|Mux7~31_combout\);

-- Location: LCCOMB_X39_Y37_N4
\inst2|Mux7~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~24_combout\ = (\inst2|auxA\(6) & (((!\inst2|auxA\(5))))) # (!\inst2|auxA\(6) & (\inst2|auxA\(5) & ((\inst2|auxA\(0)) # (\inst2|auxA\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(0),
	datab => \inst2|auxA\(6),
	datac => \inst2|auxA\(9),
	datad => \inst2|auxA\(5),
	combout => \inst2|Mux7~24_combout\);

-- Location: LCCOMB_X39_Y37_N16
\inst2|Mux7~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~22_combout\ = (\inst2|auxA\(6) & (\inst2|auxA\(0) & (\inst2|auxA\(7) & !\inst2|auxA\(5)))) # (!\inst2|auxA\(6) & (((\inst2|auxA\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(0),
	datab => \inst2|auxA\(6),
	datac => \inst2|auxA\(7),
	datad => \inst2|auxA\(5),
	combout => \inst2|Mux7~22_combout\);

-- Location: LCCOMB_X39_Y37_N10
\inst2|Mux7~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~23_combout\ = (\inst2|auxA\(8) & (((\inst2|auxA\(7))))) # (!\inst2|auxA\(8) & ((\inst2|Mux7~22_combout\ & (\inst2|auxA\(9))) # (!\inst2|Mux7~22_combout\ & ((\inst2|auxA\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|auxA\(9),
	datac => \inst2|auxA\(7),
	datad => \inst2|Mux7~22_combout\,
	combout => \inst2|Mux7~23_combout\);

-- Location: LCCOMB_X39_Y37_N26
\inst2|Mux7~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~25_combout\ = (\inst2|auxA\(8) & ((\inst2|auxA\(9) & (!\inst2|Mux7~24_combout\)) # (!\inst2|auxA\(9) & ((\inst2|Mux7~24_combout\) # (!\inst2|Mux7~23_combout\))))) # (!\inst2|auxA\(8) & (((\inst2|Mux7~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|auxA\(9),
	datac => \inst2|Mux7~24_combout\,
	datad => \inst2|Mux7~23_combout\,
	combout => \inst2|Mux7~25_combout\);

-- Location: LCCOMB_X38_Y37_N0
\inst2|Mux7~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~32_combout\ = (\inst2|auxA\(2) & (\inst2|auxA\(1))) # (!\inst2|auxA\(2) & ((\inst2|auxA\(1) & ((\inst2|Mux7~25_combout\))) # (!\inst2|auxA\(1) & (\inst2|Mux7~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(2),
	datab => \inst2|auxA\(1),
	datac => \inst2|Mux7~31_combout\,
	datad => \inst2|Mux7~25_combout\,
	combout => \inst2|Mux7~32_combout\);

-- Location: LCCOMB_X38_Y37_N30
\inst2|Mux7~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~35_combout\ = (\inst2|auxA\(2) & ((\inst2|Mux7~32_combout\ & (\inst2|Mux7~198_combout\)) # (!\inst2|Mux7~32_combout\ & ((\inst2|Mux7~21_combout\))))) # (!\inst2|auxA\(2) & (((\inst2|Mux7~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux7~198_combout\,
	datab => \inst2|auxA\(2),
	datac => \inst2|Mux7~21_combout\,
	datad => \inst2|Mux7~32_combout\,
	combout => \inst2|Mux7~35_combout\);

-- Location: LCCOMB_X38_Y34_N8
\inst2|Mux7~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~52_combout\ = (\inst2|auxA\(9) & (\inst2|auxA\(8) $ (((\inst2|auxA\(6) & !\inst2|auxA\(7)))))) # (!\inst2|auxA\(9) & (((!\inst2|auxA\(6) & \inst2|auxA\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|auxA\(6),
	datac => \inst2|auxA\(9),
	datad => \inst2|auxA\(7),
	combout => \inst2|Mux7~52_combout\);

-- Location: LCCOMB_X38_Y34_N2
\inst2|Mux7~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~51_combout\ = (\inst2|auxA\(8) & (((\inst2|auxA\(6) & \inst2|auxA\(7))) # (!\inst2|auxA\(9)))) # (!\inst2|auxA\(8) & (!\inst2|auxA\(9) & (\inst2|auxA\(6) & \inst2|auxA\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|auxA\(9),
	datac => \inst2|auxA\(6),
	datad => \inst2|auxA\(7),
	combout => \inst2|Mux7~51_combout\);

-- Location: LCCOMB_X38_Y34_N12
\inst2|Mux7~195\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~195_combout\ = (\inst2|auxA\(0) & (((\inst2|auxA\(6) & !\inst2|Mux7~51_combout\)) # (!\inst2|Mux7~52_combout\))) # (!\inst2|auxA\(0) & (\inst2|Mux7~51_combout\ $ (((\inst2|auxA\(6) & \inst2|Mux7~52_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(0),
	datab => \inst2|auxA\(6),
	datac => \inst2|Mux7~52_combout\,
	datad => \inst2|Mux7~51_combout\,
	combout => \inst2|Mux7~195_combout\);

-- Location: LCCOMB_X38_Y34_N26
\inst2|Mux7~196\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~196_combout\ = (\inst2|auxA\(1) & (!\inst2|Mux7~52_combout\ & ((\inst2|auxA\(6)) # (\inst2|Mux7~195_combout\)))) # (!\inst2|auxA\(1) & (\inst2|Mux7~195_combout\ & ((\inst2|auxA\(6)) # (\inst2|Mux7~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(1),
	datab => \inst2|auxA\(6),
	datac => \inst2|Mux7~52_combout\,
	datad => \inst2|Mux7~195_combout\,
	combout => \inst2|Mux7~196_combout\);

-- Location: LCCOMB_X38_Y34_N22
\inst2|Mux7~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~45_combout\ = (\inst2|auxA\(7) & (\inst2|auxA\(1) $ (((!\inst2|auxA\(8) & !\inst2|auxA\(0)))))) # (!\inst2|auxA\(7) & (((\inst2|auxA\(1)) # (\inst2|auxA\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|auxA\(7),
	datac => \inst2|auxA\(1),
	datad => \inst2|auxA\(0),
	combout => \inst2|Mux7~45_combout\);

-- Location: LCCOMB_X38_Y34_N16
\inst2|Mux7~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~46_combout\ = (\inst2|auxA\(7) & ((\inst2|auxA\(1)) # (\inst2|auxA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(1),
	datac => \inst2|auxA\(0),
	datad => \inst2|auxA\(7),
	combout => \inst2|Mux7~46_combout\);

-- Location: LCCOMB_X38_Y34_N14
\inst2|Mux7~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~47_combout\ = (\inst2|auxA\(6) & (\inst2|Mux7~46_combout\ $ (((\inst2|auxA\(8) & \inst2|Mux7~45_combout\))))) # (!\inst2|auxA\(6) & (\inst2|auxA\(8) $ ((\inst2|Mux7~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|auxA\(6),
	datac => \inst2|Mux7~45_combout\,
	datad => \inst2|Mux7~46_combout\,
	combout => \inst2|Mux7~47_combout\);

-- Location: LCCOMB_X38_Y34_N28
\inst2|Mux7~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~48_combout\ = (\inst2|auxA\(8) & ((\inst2|auxA\(6) & (!\inst2|Mux7~45_combout\)) # (!\inst2|auxA\(6) & (\inst2|Mux7~45_combout\ & \inst2|Mux7~46_combout\)))) # (!\inst2|auxA\(8) & (((\inst2|Mux7~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|auxA\(6),
	datac => \inst2|Mux7~45_combout\,
	datad => \inst2|Mux7~46_combout\,
	combout => \inst2|Mux7~48_combout\);

-- Location: LCCOMB_X38_Y34_N30
\inst2|Mux7~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~49_combout\ = \inst2|Mux7~48_combout\ $ (((\inst2|auxA\(9) & \inst2|Mux7~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|auxA\(9),
	datac => \inst2|Mux7~47_combout\,
	datad => \inst2|Mux7~48_combout\,
	combout => \inst2|Mux7~49_combout\);

-- Location: LCCOMB_X38_Y34_N18
\inst2|Mux7~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~41_combout\ = (\inst2|auxA\(8) & ((\inst2|auxA\(7) $ (\inst2|auxA\(9))) # (!\inst2|auxA\(0)))) # (!\inst2|auxA\(8) & (!\inst2|auxA\(7) & (\inst2|auxA\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|auxA\(7),
	datac => \inst2|auxA\(9),
	datad => \inst2|auxA\(0),
	combout => \inst2|Mux7~41_combout\);

-- Location: LCCOMB_X38_Y34_N24
\inst2|Mux7~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~42_combout\ = (\inst2|auxA\(1) & ((\inst2|auxA\(6)) # ((\inst2|auxA\(7) & \inst2|Mux7~41_combout\)))) # (!\inst2|auxA\(1) & (!\inst2|auxA\(6) & ((\inst2|auxA\(7)) # (\inst2|Mux7~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(1),
	datab => \inst2|auxA\(7),
	datac => \inst2|auxA\(6),
	datad => \inst2|Mux7~41_combout\,
	combout => \inst2|Mux7~42_combout\);

-- Location: LCCOMB_X38_Y34_N10
\inst2|Mux7~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~43_combout\ = (\inst2|auxA\(8) & ((\inst2|auxA\(7)) # ((\inst2|Mux7~42_combout\)))) # (!\inst2|auxA\(8) & ((\inst2|auxA\(7) & ((\inst2|Mux7~42_combout\))) # (!\inst2|auxA\(7) & (\inst2|auxA\(0) & !\inst2|Mux7~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|auxA\(7),
	datac => \inst2|auxA\(0),
	datad => \inst2|Mux7~42_combout\,
	combout => \inst2|Mux7~43_combout\);

-- Location: LCCOMB_X38_Y34_N20
\inst2|Mux7~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~44_combout\ = (\inst2|auxA\(6) & (\inst2|auxA\(9) & (\inst2|Mux7~42_combout\ $ (\inst2|Mux7~43_combout\)))) # (!\inst2|auxA\(6) & (\inst2|Mux7~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|Mux7~42_combout\,
	datac => \inst2|auxA\(9),
	datad => \inst2|Mux7~43_combout\,
	combout => \inst2|Mux7~44_combout\);

-- Location: LCCOMB_X38_Y34_N4
\inst2|Mux7~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~50_combout\ = (\inst2|auxA\(2) & (\inst2|auxA\(5))) # (!\inst2|auxA\(2) & ((\inst2|auxA\(5) & ((\inst2|Mux7~44_combout\))) # (!\inst2|auxA\(5) & (\inst2|Mux7~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(2),
	datab => \inst2|auxA\(5),
	datac => \inst2|Mux7~49_combout\,
	datad => \inst2|Mux7~44_combout\,
	combout => \inst2|Mux7~50_combout\);

-- Location: LCCOMB_X38_Y36_N0
\inst2|Mux7~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~53_combout\ = (\inst2|auxA\(2) & ((\inst2|Mux7~50_combout\ & ((\inst2|Mux7~196_combout\))) # (!\inst2|Mux7~50_combout\ & (\inst2|Mux7~40_combout\)))) # (!\inst2|auxA\(2) & (((\inst2|Mux7~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux7~40_combout\,
	datab => \inst2|Mux7~196_combout\,
	datac => \inst2|auxA\(2),
	datad => \inst2|Mux7~50_combout\,
	combout => \inst2|Mux7~53_combout\);

-- Location: LCCOMB_X38_Y36_N10
\inst2|Mux7~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~54_combout\ = (\inst2|auxA\(4) & ((\inst2|auxA\(3)) # ((\inst2|Mux7~35_combout\)))) # (!\inst2|auxA\(4) & (!\inst2|auxA\(3) & ((\inst2|Mux7~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(4),
	datab => \inst2|auxA\(3),
	datac => \inst2|Mux7~35_combout\,
	datad => \inst2|Mux7~53_combout\,
	combout => \inst2|Mux7~54_combout\);

-- Location: LCCOMB_X38_Y36_N4
\inst2|Mux7~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~74_combout\ = (\inst2|auxA\(3) & ((\inst2|Mux7~54_combout\ & (\inst2|Mux7~73_combout\)) # (!\inst2|Mux7~54_combout\ & ((\inst2|Mux7~15_combout\))))) # (!\inst2|auxA\(3) & (((\inst2|Mux7~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(3),
	datab => \inst2|Mux7~73_combout\,
	datac => \inst2|Mux7~15_combout\,
	datad => \inst2|Mux7~54_combout\,
	combout => \inst2|Mux7~74_combout\);

-- Location: LCCOMB_X38_Y33_N26
\inst2|Mux7~114\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~114_combout\ = (\inst2|auxA\(8)) # ((\inst2|auxA\(6) & (!\inst2|auxA\(5) & \inst2|auxA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(8),
	datac => \inst2|auxA\(5),
	datad => \inst2|auxA\(0),
	combout => \inst2|Mux7~114_combout\);

-- Location: LCCOMB_X38_Y33_N8
\inst2|Mux7~111\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~111_combout\ = (\inst2|auxA\(6) & (\inst2|auxA\(0) & (\inst2|auxA\(5) & !\inst2|auxA\(8)))) # (!\inst2|auxA\(6) & (((!\inst2|auxA\(5) & \inst2|auxA\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(0),
	datab => \inst2|auxA\(6),
	datac => \inst2|auxA\(5),
	datad => \inst2|auxA\(8),
	combout => \inst2|Mux7~111_combout\);

-- Location: LCCOMB_X38_Y33_N6
\inst2|Mux7~112\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~112_combout\ = (\inst2|auxA\(0) & (((!\inst2|auxA\(6))))) # (!\inst2|auxA\(0) & ((\inst2|auxA\(5) & ((\inst2|auxA\(8)) # (!\inst2|auxA\(6)))) # (!\inst2|auxA\(5) & (!\inst2|auxA\(6) & \inst2|auxA\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(0),
	datab => \inst2|auxA\(5),
	datac => \inst2|auxA\(6),
	datad => \inst2|auxA\(8),
	combout => \inst2|Mux7~112_combout\);

-- Location: LCCOMB_X38_Y33_N28
\inst2|Mux7~113\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~113_combout\ = (\inst2|auxA\(7) & ((\inst2|auxA\(4)) # ((!\inst2|Mux7~111_combout\)))) # (!\inst2|auxA\(7) & (!\inst2|auxA\(4) & ((\inst2|Mux7~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|auxA\(4),
	datac => \inst2|Mux7~111_combout\,
	datad => \inst2|Mux7~112_combout\,
	combout => \inst2|Mux7~113_combout\);

-- Location: LCCOMB_X38_Y33_N24
\inst2|Mux7~115\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~115_combout\ = (\inst2|auxA\(4) & ((\inst2|Mux7~113_combout\ & ((\inst2|Mux7~114_combout\))) # (!\inst2|Mux7~113_combout\ & (\inst2|Mux7~110_combout\)))) # (!\inst2|auxA\(4) & (((\inst2|Mux7~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux7~110_combout\,
	datab => \inst2|auxA\(4),
	datac => \inst2|Mux7~114_combout\,
	datad => \inst2|Mux7~113_combout\,
	combout => \inst2|Mux7~115_combout\);

-- Location: LCCOMB_X39_Y34_N24
\inst2|Mux7~127\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~127_combout\ = (\inst2|auxA\(6) & (((!\inst2|auxA\(5))))) # (!\inst2|auxA\(6) & ((\inst2|auxA\(4) & (!\inst2|auxA\(5) & \inst2|auxA\(0))) # (!\inst2|auxA\(4) & (\inst2|auxA\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(4),
	datac => \inst2|auxA\(5),
	datad => \inst2|auxA\(0),
	combout => \inst2|Mux7~127_combout\);

-- Location: LCCOMB_X39_Y33_N14
\inst2|Mux7~124\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~124_combout\ = (\inst2|auxA\(6) & ((\inst2|auxA\(5) & ((\inst2|auxA\(4)))) # (!\inst2|auxA\(5) & ((\inst2|auxA\(0)) # (!\inst2|auxA\(4)))))) # (!\inst2|auxA\(6) & ((\inst2|auxA\(5) & (\inst2|auxA\(0) & !\inst2|auxA\(4))) # (!\inst2|auxA\(5) & 
-- ((\inst2|auxA\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(0),
	datab => \inst2|auxA\(6),
	datac => \inst2|auxA\(5),
	datad => \inst2|auxA\(4),
	combout => \inst2|Mux7~124_combout\);

-- Location: LCCOMB_X39_Y33_N12
\inst2|Mux7~125\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~125_combout\ = (\inst2|auxA\(6) & (((!\inst2|auxA\(4))))) # (!\inst2|auxA\(6) & ((\inst2|auxA\(0) & (\inst2|auxA\(5) & !\inst2|auxA\(4))) # (!\inst2|auxA\(0) & (!\inst2|auxA\(5) & \inst2|auxA\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(0),
	datab => \inst2|auxA\(6),
	datac => \inst2|auxA\(5),
	datad => \inst2|auxA\(4),
	combout => \inst2|Mux7~125_combout\);

-- Location: LCCOMB_X39_Y33_N10
\inst2|Mux7~126\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~126_combout\ = (\inst2|auxA\(8) & (\inst2|auxA\(7))) # (!\inst2|auxA\(8) & ((\inst2|auxA\(7) & ((!\inst2|Mux7~125_combout\))) # (!\inst2|auxA\(7) & (!\inst2|Mux7~124_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|auxA\(7),
	datac => \inst2|Mux7~124_combout\,
	datad => \inst2|Mux7~125_combout\,
	combout => \inst2|Mux7~126_combout\);

-- Location: LCCOMB_X39_Y33_N8
\inst2|Mux7~128\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~128_combout\ = (\inst2|Mux7~126_combout\) # ((\inst2|auxA\(8) & \inst2|Mux7~127_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datac => \inst2|Mux7~127_combout\,
	datad => \inst2|Mux7~126_combout\,
	combout => \inst2|Mux7~128_combout\);

-- Location: LCCOMB_X39_Y33_N4
\inst2|Mux7~117\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~117_combout\ = (\inst2|auxA\(7) & (((!\inst2|auxA\(0)) # (!\inst2|auxA\(8))) # (!\inst2|auxA\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(5),
	datab => \inst2|auxA\(7),
	datac => \inst2|auxA\(8),
	datad => \inst2|auxA\(0),
	combout => \inst2|Mux7~117_combout\);

-- Location: LCCOMB_X39_Y33_N18
\inst2|Mux7~116\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~116_combout\ = (\inst2|auxA\(5)) # ((!\inst2|auxA\(8) & (\inst2|auxA\(7) & \inst2|auxA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|auxA\(7),
	datac => \inst2|auxA\(5),
	datad => \inst2|auxA\(0),
	combout => \inst2|Mux7~116_combout\);

-- Location: LCCOMB_X39_Y33_N22
\inst2|Mux7~118\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~118_combout\ = (\inst2|Mux7~116_combout\ & (\inst2|auxA\(8) & (!\inst2|auxA\(6) & !\inst2|Mux7~117_combout\))) # (!\inst2|Mux7~116_combout\ & (\inst2|Mux7~117_combout\ $ (((!\inst2|auxA\(8) & \inst2|auxA\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|auxA\(6),
	datac => \inst2|Mux7~117_combout\,
	datad => \inst2|Mux7~116_combout\,
	combout => \inst2|Mux7~118_combout\);

-- Location: LCCOMB_X39_Y33_N28
\inst2|Mux7~119\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~119_combout\ = (\inst2|auxA\(8) & (\inst2|auxA\(6) $ (((!\inst2|Mux7~116_combout\))))) # (!\inst2|auxA\(8) & ((\inst2|Mux7~117_combout\) # ((!\inst2|auxA\(6) & \inst2|Mux7~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|auxA\(6),
	datac => \inst2|Mux7~117_combout\,
	datad => \inst2|Mux7~116_combout\,
	combout => \inst2|Mux7~119_combout\);

-- Location: LCCOMB_X39_Y33_N26
\inst2|Mux7~120\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~120_combout\ = \inst2|Mux7~119_combout\ $ (((\inst2|auxA\(4)) # (\inst2|Mux7~118_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|auxA\(4),
	datac => \inst2|Mux7~118_combout\,
	datad => \inst2|Mux7~119_combout\,
	combout => \inst2|Mux7~120_combout\);

-- Location: LCCOMB_X39_Y33_N20
\inst2|Mux7~121\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~121_combout\ = \inst2|auxA\(6) $ (((\inst2|auxA\(8) & (\inst2|auxA\(7))) # (!\inst2|auxA\(8) & ((\inst2|auxA\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|auxA\(7),
	datac => \inst2|auxA\(6),
	datad => \inst2|auxA\(4),
	combout => \inst2|Mux7~121_combout\);

-- Location: LCCOMB_X39_Y33_N30
\inst2|Mux7~122\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~122_combout\ = (\inst2|auxA\(8) & (!\inst2|auxA\(6) & ((\inst2|auxA\(4)) # (\inst2|auxA\(7))))) # (!\inst2|auxA\(8) & (\inst2|auxA\(6) & (\inst2|auxA\(4) $ (\inst2|auxA\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|auxA\(4),
	datac => \inst2|auxA\(6),
	datad => \inst2|auxA\(7),
	combout => \inst2|Mux7~122_combout\);

-- Location: LCCOMB_X39_Y33_N24
\inst2|Mux7~191\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~191_combout\ = (\inst2|auxA\(8) & ((\inst2|auxA\(5) & ((\inst2|Mux7~121_combout\))) # (!\inst2|auxA\(5) & (\inst2|auxA\(0) & !\inst2|Mux7~121_combout\)))) # (!\inst2|auxA\(8) & ((\inst2|auxA\(5) & ((!\inst2|Mux7~121_combout\) # 
-- (!\inst2|auxA\(0)))) # (!\inst2|auxA\(5) & ((\inst2|Mux7~121_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|auxA\(0),
	datac => \inst2|auxA\(5),
	datad => \inst2|Mux7~121_combout\,
	combout => \inst2|Mux7~191_combout\);

-- Location: LCCOMB_X39_Y33_N2
\inst2|Mux7~192\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~192_combout\ = (\inst2|Mux7~122_combout\ & (\inst2|auxA\(8) $ (((\inst2|Mux7~121_combout\) # (\inst2|Mux7~191_combout\))))) # (!\inst2|Mux7~122_combout\ & (\inst2|Mux7~191_combout\ & ((\inst2|auxA\(8)) # (\inst2|Mux7~121_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|Mux7~121_combout\,
	datac => \inst2|Mux7~122_combout\,
	datad => \inst2|Mux7~191_combout\,
	combout => \inst2|Mux7~192_combout\);

-- Location: LCCOMB_X39_Y33_N0
\inst2|Mux7~123\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~123_combout\ = (\inst2|auxA\(1) & ((\inst2|auxA\(2)) # ((\inst2|Mux7~120_combout\)))) # (!\inst2|auxA\(1) & (!\inst2|auxA\(2) & ((\inst2|Mux7~192_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(1),
	datab => \inst2|auxA\(2),
	datac => \inst2|Mux7~120_combout\,
	datad => \inst2|Mux7~192_combout\,
	combout => \inst2|Mux7~123_combout\);

-- Location: LCCOMB_X39_Y33_N6
\inst2|Mux7~129\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~129_combout\ = (\inst2|auxA\(2) & ((\inst2|Mux7~123_combout\ & ((\inst2|Mux7~128_combout\))) # (!\inst2|Mux7~123_combout\ & (\inst2|Mux7~115_combout\)))) # (!\inst2|auxA\(2) & (((\inst2|Mux7~123_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(2),
	datab => \inst2|Mux7~115_combout\,
	datac => \inst2|Mux7~128_combout\,
	datad => \inst2|Mux7~123_combout\,
	combout => \inst2|Mux7~129_combout\);

-- Location: LCCOMB_X39_Y38_N24
\inst2|Mux7~96\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~96_combout\ = (!\inst2|auxA\(7) & ((\inst2|auxA\(0)) # ((\inst2|auxA\(1)) # (\inst2|auxA\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(0),
	datab => \inst2|auxA\(7),
	datac => \inst2|auxA\(1),
	datad => \inst2|auxA\(2),
	combout => \inst2|Mux7~96_combout\);

-- Location: LCCOMB_X39_Y38_N26
\inst2|Mux7~97\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~97_combout\ = (\inst2|auxA\(6) & (!\inst2|auxA\(8))) # (!\inst2|auxA\(6) & ((\inst2|auxA\(8)) # (!\inst2|Mux7~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datac => \inst2|auxA\(8),
	datad => \inst2|Mux7~96_combout\,
	combout => \inst2|Mux7~97_combout\);

-- Location: LCCOMB_X39_Y36_N24
\inst2|Mux7~109\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~109_combout\ = (\inst2|Mux7~105_combout\ & (((!\inst2|Mux7~108_combout\)) # (!\inst2|auxA\(4)))) # (!\inst2|Mux7~105_combout\ & (\inst2|auxA\(4) & (\inst2|Mux7~97_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux7~105_combout\,
	datab => \inst2|auxA\(4),
	datac => \inst2|Mux7~97_combout\,
	datad => \inst2|Mux7~108_combout\,
	combout => \inst2|Mux7~109_combout\);

-- Location: LCCOMB_X38_Y36_N14
\inst2|Mux7~130\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~130_combout\ = (\inst2|auxA\(3) & (\inst2|auxA\(9))) # (!\inst2|auxA\(3) & ((\inst2|auxA\(9) & ((\inst2|Mux7~109_combout\))) # (!\inst2|auxA\(9) & (\inst2|Mux7~129_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(3),
	datab => \inst2|auxA\(9),
	datac => \inst2|Mux7~129_combout\,
	datad => \inst2|Mux7~109_combout\,
	combout => \inst2|Mux7~130_combout\);

-- Location: LCCOMB_X41_Y35_N28
\inst2|Mux7~92\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~92_combout\ = (!\inst2|auxA\(0) & (\inst2|auxA\(6) & (!\inst2|auxA\(1) & \inst2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(0),
	datab => \inst2|auxA\(6),
	datac => \inst2|auxA\(1),
	datad => \inst2|Equal0~0_combout\,
	combout => \inst2|Mux7~92_combout\);

-- Location: LCCOMB_X42_Y36_N20
\inst2|Mux7~94\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~94_combout\ = (\inst2|Mux7~93_combout\ & ((\inst2|Mux7~92_combout\) # (\inst2|auxA\(4) $ (\inst2|auxA\(8))))) # (!\inst2|Mux7~93_combout\ & ((\inst2|auxA\(4) & (\inst2|Mux7~92_combout\ & \inst2|auxA\(8))) # (!\inst2|auxA\(4) & 
-- ((!\inst2|auxA\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux7~93_combout\,
	datab => \inst2|auxA\(4),
	datac => \inst2|Mux7~92_combout\,
	datad => \inst2|auxA\(8),
	combout => \inst2|Mux7~94_combout\);

-- Location: LCCOMB_X42_Y35_N24
\inst2|Mux7~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~75_combout\ = \inst2|auxA\(6) $ (((\inst2|auxA\(4) & ((!\inst2|auxA\(1)) # (!\inst2|auxA\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(0),
	datac => \inst2|auxA\(1),
	datad => \inst2|auxA\(4),
	combout => \inst2|Mux7~75_combout\);

-- Location: LCCOMB_X41_Y35_N22
\inst2|Mux7~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~77_combout\ = (\inst2|auxA\(4) & ((\inst2|auxA\(6)) # ((!\inst2|auxA\(0) & !\inst2|auxA\(1))))) # (!\inst2|auxA\(4) & ((\inst2|auxA\(1) & (\inst2|auxA\(0) & !\inst2|auxA\(6))) # (!\inst2|auxA\(1) & ((\inst2|auxA\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(0),
	datab => \inst2|auxA\(4),
	datac => \inst2|auxA\(1),
	datad => \inst2|auxA\(6),
	combout => \inst2|Mux7~77_combout\);

-- Location: LCCOMB_X42_Y36_N10
\inst2|Mux7~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~78_combout\ = (\inst2|auxA\(5) & (((\inst2|auxA\(8))))) # (!\inst2|auxA\(5) & ((\inst2|auxA\(8) & (!\inst2|Mux7~76_combout\)) # (!\inst2|auxA\(8) & ((\inst2|Mux7~77_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux7~76_combout\,
	datab => \inst2|auxA\(5),
	datac => \inst2|Mux7~77_combout\,
	datad => \inst2|auxA\(8),
	combout => \inst2|Mux7~78_combout\);

-- Location: LCCOMB_X42_Y36_N4
\inst2|Mux7~80\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~80_combout\ = (\inst2|auxA\(5) & ((\inst2|Mux7~78_combout\ & (!\inst2|Mux7~79_combout\)) # (!\inst2|Mux7~78_combout\ & ((!\inst2|Mux7~75_combout\))))) # (!\inst2|auxA\(5) & (((\inst2|Mux7~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux7~79_combout\,
	datab => \inst2|auxA\(5),
	datac => \inst2|Mux7~75_combout\,
	datad => \inst2|Mux7~78_combout\,
	combout => \inst2|Mux7~80_combout\);

-- Location: LCCOMB_X42_Y36_N22
\inst2|Mux7~81\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~81_combout\ = (\inst2|auxA\(5) & (!\inst2|auxA\(6) & ((\inst2|auxA\(1)) # (\inst2|auxA\(8))))) # (!\inst2|auxA\(5) & (\inst2|auxA\(1) & (\inst2|auxA\(8) & \inst2|auxA\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(1),
	datab => \inst2|auxA\(8),
	datac => \inst2|auxA\(5),
	datad => \inst2|auxA\(6),
	combout => \inst2|Mux7~81_combout\);

-- Location: LCCOMB_X42_Y36_N24
\inst2|Mux7~82\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~82_combout\ = (\inst2|auxA\(8) & ((\inst2|auxA\(5) & (\inst2|auxA\(1))) # (!\inst2|auxA\(5) & ((\inst2|auxA\(6)))))) # (!\inst2|auxA\(8) & (\inst2|auxA\(1) & ((\inst2|auxA\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(1),
	datab => \inst2|auxA\(8),
	datac => \inst2|auxA\(5),
	datad => \inst2|auxA\(6),
	combout => \inst2|Mux7~82_combout\);

-- Location: LCCOMB_X42_Y36_N8
\inst2|Mux7~84\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~84_combout\ = (\inst2|Mux7~82_combout\ & ((\inst2|auxA\(0)) # (\inst2|Mux7~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|auxA\(0),
	datac => \inst2|Mux7~81_combout\,
	datad => \inst2|Mux7~82_combout\,
	combout => \inst2|Mux7~84_combout\);

-- Location: LCCOMB_X42_Y36_N6
\inst2|Mux7~83\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~83_combout\ = (\inst2|Mux7~81_combout\ & ((\inst2|auxA\(0)) # (\inst2|Mux7~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|auxA\(0),
	datac => \inst2|Mux7~81_combout\,
	datad => \inst2|Mux7~82_combout\,
	combout => \inst2|Mux7~83_combout\);

-- Location: LCCOMB_X42_Y36_N30
\inst2|Mux7~85\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~85_combout\ = (\inst2|auxA\(4) & (\inst2|Mux7~83_combout\ $ (((\inst2|auxA\(8)) # (!\inst2|Mux7~84_combout\))))) # (!\inst2|auxA\(4) & ((\inst2|auxA\(8) & (!\inst2|Mux7~84_combout\)) # (!\inst2|auxA\(8) & (\inst2|Mux7~84_combout\ & 
-- !\inst2|Mux7~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001010011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|auxA\(4),
	datac => \inst2|Mux7~84_combout\,
	datad => \inst2|Mux7~83_combout\,
	combout => \inst2|Mux7~85_combout\);

-- Location: LCCOMB_X42_Y36_N14
\inst2|Mux7~87\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~87_combout\ = (\inst2|auxA\(1) & (((\inst2|auxA\(8)) # (!\inst2|auxA\(4))))) # (!\inst2|auxA\(1) & (\inst2|auxA\(8) & ((!\inst2|auxA\(4)) # (!\inst2|auxA\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(1),
	datab => \inst2|auxA\(0),
	datac => \inst2|auxA\(4),
	datad => \inst2|auxA\(8),
	combout => \inst2|Mux7~87_combout\);

-- Location: LCCOMB_X42_Y36_N28
\inst2|Mux7~86\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~86_combout\ = (\inst2|auxA\(4) & ((\inst2|auxA\(1)) # ((\inst2|auxA\(0) & \inst2|auxA\(8))))) # (!\inst2|auxA\(4) & (((\inst2|auxA\(0)) # (\inst2|auxA\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(1),
	datab => \inst2|auxA\(0),
	datac => \inst2|auxA\(4),
	datad => \inst2|auxA\(8),
	combout => \inst2|Mux7~86_combout\);

-- Location: LCCOMB_X42_Y36_N26
\inst2|Mux7~89\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~89_combout\ = (\inst2|Mux7~86_combout\ & ((\inst2|auxA\(6) & (!\inst2|auxA\(4) & !\inst2|Mux7~87_combout\)) # (!\inst2|auxA\(6) & ((\inst2|Mux7~87_combout\))))) # (!\inst2|Mux7~86_combout\ & ((\inst2|auxA\(4) $ (\inst2|Mux7~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(4),
	datac => \inst2|Mux7~87_combout\,
	datad => \inst2|Mux7~86_combout\,
	combout => \inst2|Mux7~89_combout\);

-- Location: LCCOMB_X42_Y36_N16
\inst2|Mux7~88\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~88_combout\ = (\inst2|auxA\(6) & ((\inst2|Mux7~86_combout\ & (\inst2|auxA\(4))) # (!\inst2|Mux7~86_combout\ & ((!\inst2|Mux7~87_combout\))))) # (!\inst2|auxA\(6) & (!\inst2|auxA\(4) & (\inst2|Mux7~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(4),
	datac => \inst2|Mux7~87_combout\,
	datad => \inst2|Mux7~86_combout\,
	combout => \inst2|Mux7~88_combout\);

-- Location: LCCOMB_X42_Y36_N0
\inst2|Mux7~90\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~90_combout\ = \inst2|Mux7~88_combout\ $ (((\inst2|Mux7~89_combout\) # (!\inst2|auxA\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|auxA\(5),
	datac => \inst2|Mux7~89_combout\,
	datad => \inst2|Mux7~88_combout\,
	combout => \inst2|Mux7~90_combout\);

-- Location: LCCOMB_X42_Y36_N18
\inst2|Mux7~91\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~91_combout\ = (\inst2|auxA\(2) & (\inst2|auxA\(7))) # (!\inst2|auxA\(2) & ((\inst2|auxA\(7) & (\inst2|Mux7~85_combout\)) # (!\inst2|auxA\(7) & ((\inst2|Mux7~90_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(2),
	datab => \inst2|auxA\(7),
	datac => \inst2|Mux7~85_combout\,
	datad => \inst2|Mux7~90_combout\,
	combout => \inst2|Mux7~91_combout\);

-- Location: LCCOMB_X42_Y36_N2
\inst2|Mux7~95\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~95_combout\ = (\inst2|auxA\(2) & ((\inst2|Mux7~91_combout\ & (\inst2|Mux7~94_combout\)) # (!\inst2|Mux7~91_combout\ & ((\inst2|Mux7~80_combout\))))) # (!\inst2|auxA\(2) & (((\inst2|Mux7~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(2),
	datab => \inst2|Mux7~94_combout\,
	datac => \inst2|Mux7~80_combout\,
	datad => \inst2|Mux7~91_combout\,
	combout => \inst2|Mux7~95_combout\);

-- Location: LCCOMB_X38_Y36_N12
\inst2|Mux7~140\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~140_combout\ = (\inst2|auxA\(3) & ((\inst2|Mux7~130_combout\ & (\inst2|Mux7~139_combout\)) # (!\inst2|Mux7~130_combout\ & ((\inst2|Mux7~95_combout\))))) # (!\inst2|auxA\(3) & (((\inst2|Mux7~130_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux7~139_combout\,
	datab => \inst2|auxA\(3),
	datac => \inst2|Mux7~130_combout\,
	datad => \inst2|Mux7~95_combout\,
	combout => \inst2|Mux7~140_combout\);

-- Location: LCCOMB_X38_Y36_N6
\inst2|Mux7~141\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~141_combout\ = (!\inst2|auxA\(11) & ((\inst2|auxA\(10) & (\inst2|Mux7~74_combout\)) # (!\inst2|auxA\(10) & ((\inst2|Mux7~140_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(11),
	datab => \inst2|auxA\(10),
	datac => \inst2|Mux7~74_combout\,
	datad => \inst2|Mux7~140_combout\,
	combout => \inst2|Mux7~141_combout\);

-- Location: LCCOMB_X38_Y36_N8
\inst2|Mux7~188\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux7~188_combout\ = (\inst2|Mux7~141_combout\) # ((\inst2|auxA\(11) & (\inst2|Mux7~187_combout\ & !\inst2|auxA\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(11),
	datab => \inst2|Mux7~187_combout\,
	datac => \inst2|auxA\(10),
	datad => \inst2|Mux7~141_combout\,
	combout => \inst2|Mux7~188_combout\);

-- Location: LCCOMB_X38_Y36_N16
\inst|LessThan1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|LessThan1~1_cout\ = CARRY((!\inst4|s_triangular_counter\(0) & \inst2|Mux7~188_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_triangular_counter\(0),
	datab => \inst2|Mux7~188_combout\,
	datad => VCC,
	cout => \inst|LessThan1~1_cout\);

-- Location: LCCOMB_X38_Y36_N18
\inst|LessThan1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|LessThan1~3_cout\ = CARRY((\inst4|s_triangular_counter\(1) & ((!\inst|LessThan1~1_cout\) # (!\inst2|Mux6~165_combout\))) # (!\inst4|s_triangular_counter\(1) & (!\inst2|Mux6~165_combout\ & !\inst|LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_triangular_counter\(1),
	datab => \inst2|Mux6~165_combout\,
	datad => VCC,
	cin => \inst|LessThan1~1_cout\,
	cout => \inst|LessThan1~3_cout\);

-- Location: LCCOMB_X38_Y36_N20
\inst|LessThan1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|LessThan1~5_cout\ = CARRY((\inst4|s_triangular_counter\(2) & (\inst2|Mux5~88_combout\ & !\inst|LessThan1~3_cout\)) # (!\inst4|s_triangular_counter\(2) & ((\inst2|Mux5~88_combout\) # (!\inst|LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_triangular_counter\(2),
	datab => \inst2|Mux5~88_combout\,
	datad => VCC,
	cin => \inst|LessThan1~3_cout\,
	cout => \inst|LessThan1~5_cout\);

-- Location: LCCOMB_X38_Y36_N22
\inst|LessThan1~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|LessThan1~7_cout\ = CARRY((\inst4|s_triangular_counter\(3) & ((!\inst|LessThan1~5_cout\) # (!\inst2|Mux4~59_combout\))) # (!\inst4|s_triangular_counter\(3) & (!\inst2|Mux4~59_combout\ & !\inst|LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_triangular_counter\(3),
	datab => \inst2|Mux4~59_combout\,
	datad => VCC,
	cin => \inst|LessThan1~5_cout\,
	cout => \inst|LessThan1~7_cout\);

-- Location: LCCOMB_X38_Y36_N24
\inst|LessThan1~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|LessThan1~9_cout\ = CARRY((\inst2|Mux3~35_combout\ & ((!\inst|LessThan1~7_cout\) # (!\inst4|s_triangular_counter\(4)))) # (!\inst2|Mux3~35_combout\ & (!\inst4|s_triangular_counter\(4) & !\inst|LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux3~35_combout\,
	datab => \inst4|s_triangular_counter\(4),
	datad => VCC,
	cin => \inst|LessThan1~7_cout\,
	cout => \inst|LessThan1~9_cout\);

-- Location: LCCOMB_X38_Y36_N26
\inst|LessThan1~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|LessThan1~11_cout\ = CARRY((\inst2|Mux2~21_combout\ & (\inst4|s_triangular_counter\(5) & !\inst|LessThan1~9_cout\)) # (!\inst2|Mux2~21_combout\ & ((\inst4|s_triangular_counter\(5)) # (!\inst|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux2~21_combout\,
	datab => \inst4|s_triangular_counter\(5),
	datad => VCC,
	cin => \inst|LessThan1~9_cout\,
	cout => \inst|LessThan1~11_cout\);

-- Location: LCCOMB_X38_Y36_N28
\inst|LessThan1~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|LessThan1~13_cout\ = CARRY((\inst2|Mux1~11_combout\ & ((\inst4|s_triangular_counter\(6)) # (!\inst|LessThan1~11_cout\))) # (!\inst2|Mux1~11_combout\ & (\inst4|s_triangular_counter\(6) & !\inst|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux1~11_combout\,
	datab => \inst4|s_triangular_counter\(6),
	datad => VCC,
	cin => \inst|LessThan1~11_cout\,
	cout => \inst|LessThan1~13_cout\);

-- Location: LCCOMB_X38_Y36_N30
\inst|LessThan1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|LessThan1~14_combout\ = (\inst2|Mux0~0_combout\ & ((\inst|LessThan1~13_cout\) # (!\inst4|Add2~0_combout\))) # (!\inst2|Mux0~0_combout\ & (\inst|LessThan1~13_cout\ & !\inst4|Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mux0~0_combout\,
	datad => \inst4|Add2~0_combout\,
	cin => \inst|LessThan1~13_cout\,
	combout => \inst|LessThan1~14_combout\);

-- Location: FF_X38_Y36_N31
\inst|pwm_output1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|LessThan1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pwm_output1~q\);

-- Location: LCCOMB_X36_Y36_N0
\inst|LessThan2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|LessThan2~1_cout\ = CARRY((\inst2|Mux7~188_combout\ & !\inst4|s_triangular_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux7~188_combout\,
	datab => \inst4|s_triangular_counter\(0),
	datad => VCC,
	cout => \inst|LessThan2~1_cout\);

-- Location: LCCOMB_X36_Y36_N2
\inst|LessThan2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|LessThan2~3_cout\ = CARRY((\inst2|Mux6~165_combout\ & (\inst4|s_triangular_counter\(1) & !\inst|LessThan2~1_cout\)) # (!\inst2|Mux6~165_combout\ & ((\inst4|s_triangular_counter\(1)) # (!\inst|LessThan2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux6~165_combout\,
	datab => \inst4|s_triangular_counter\(1),
	datad => VCC,
	cin => \inst|LessThan2~1_cout\,
	cout => \inst|LessThan2~3_cout\);

-- Location: LCCOMB_X36_Y36_N4
\inst|LessThan2~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|LessThan2~5_cout\ = CARRY((\inst2|Mux5~88_combout\ & ((!\inst|LessThan2~3_cout\) # (!\inst4|s_triangular_counter\(2)))) # (!\inst2|Mux5~88_combout\ & (!\inst4|s_triangular_counter\(2) & !\inst|LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux5~88_combout\,
	datab => \inst4|s_triangular_counter\(2),
	datad => VCC,
	cin => \inst|LessThan2~3_cout\,
	cout => \inst|LessThan2~5_cout\);

-- Location: LCCOMB_X36_Y36_N6
\inst|LessThan2~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|LessThan2~7_cout\ = CARRY((\inst2|Mux4~59_combout\ & (\inst4|s_triangular_counter\(3) & !\inst|LessThan2~5_cout\)) # (!\inst2|Mux4~59_combout\ & ((\inst4|s_triangular_counter\(3)) # (!\inst|LessThan2~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux4~59_combout\,
	datab => \inst4|s_triangular_counter\(3),
	datad => VCC,
	cin => \inst|LessThan2~5_cout\,
	cout => \inst|LessThan2~7_cout\);

-- Location: LCCOMB_X36_Y36_N8
\inst|LessThan2~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|LessThan2~9_cout\ = CARRY((\inst4|s_triangular_counter\(4) & (\inst2|Mux3~35_combout\ & !\inst|LessThan2~7_cout\)) # (!\inst4|s_triangular_counter\(4) & ((\inst2|Mux3~35_combout\) # (!\inst|LessThan2~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_triangular_counter\(4),
	datab => \inst2|Mux3~35_combout\,
	datad => VCC,
	cin => \inst|LessThan2~7_cout\,
	cout => \inst|LessThan2~9_cout\);

-- Location: LCCOMB_X36_Y36_N10
\inst|LessThan2~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|LessThan2~11_cout\ = CARRY((\inst2|Mux2~21_combout\ & (\inst4|s_triangular_counter\(5) & !\inst|LessThan2~9_cout\)) # (!\inst2|Mux2~21_combout\ & ((\inst4|s_triangular_counter\(5)) # (!\inst|LessThan2~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux2~21_combout\,
	datab => \inst4|s_triangular_counter\(5),
	datad => VCC,
	cin => \inst|LessThan2~9_cout\,
	cout => \inst|LessThan2~11_cout\);

-- Location: LCCOMB_X36_Y36_N12
\inst|LessThan2~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|LessThan2~13_cout\ = CARRY((\inst4|s_triangular_counter\(6) & (\inst2|Mux1~11_combout\ & !\inst|LessThan2~11_cout\)) # (!\inst4|s_triangular_counter\(6) & ((\inst2|Mux1~11_combout\) # (!\inst|LessThan2~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_triangular_counter\(6),
	datab => \inst2|Mux1~11_combout\,
	datad => VCC,
	cin => \inst|LessThan2~11_cout\,
	cout => \inst|LessThan2~13_cout\);

-- Location: LCCOMB_X36_Y36_N14
\inst|LessThan2~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|LessThan2~14_combout\ = (\inst2|Mux0~0_combout\ & ((\inst|LessThan2~13_cout\) # (\inst4|s_triangular_counter\(7)))) # (!\inst2|Mux0~0_combout\ & (\inst|LessThan2~13_cout\ & \inst4|s_triangular_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mux0~0_combout\,
	datad => \inst4|s_triangular_counter\(7),
	cin => \inst|LessThan2~13_cout\,
	combout => \inst|LessThan2~14_combout\);

-- Location: FF_X36_Y36_N15
\inst|pwm_output2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|LessThan2~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pwm_output2~q\);

-- Location: LCCOMB_X34_Y34_N16
\inst2|Mux2~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux2~22_combout\ = (!\inst2|auxA\(6) & (!\inst2|auxA\(5) & ((!\inst2|Mux2~2_combout\) # (!\inst2|auxA\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datab => \inst2|auxA\(5),
	datac => \inst2|auxA\(4),
	datad => \inst2|Mux2~2_combout\,
	combout => \inst2|Mux2~22_combout\);

-- Location: LCCOMB_X35_Y32_N24
\inst2|Mux2~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux2~12_combout\ = (\inst2|auxA\(6) & ((\inst2|auxA\(5)) # ((\inst2|auxA\(4) & \inst2|auxA\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(4),
	datab => \inst2|auxA\(6),
	datac => \inst2|auxA\(3),
	datad => \inst2|auxA\(5),
	combout => \inst2|Mux2~12_combout\);

-- Location: LCCOMB_X35_Y34_N14
\inst2|Mux2~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux2~13_combout\ = (\inst2|auxA\(9) & ((\inst2|Mux2~12_combout\))) # (!\inst2|auxA\(9) & (\inst2|Mux2~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(9),
	datac => \inst2|Mux2~22_combout\,
	datad => \inst2|Mux2~12_combout\,
	combout => \inst2|Mux2~13_combout\);

-- Location: LCCOMB_X35_Y34_N12
\inst2|Mux2~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux2~11_combout\ = (\inst2|auxA\(9) & (((\inst2|Mux2~10_combout\ & !\inst2|auxA\(6))))) # (!\inst2|auxA\(9) & (\inst2|Mux1~6_combout\ & ((\inst2|auxA\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(9),
	datab => \inst2|Mux1~6_combout\,
	datac => \inst2|Mux2~10_combout\,
	datad => \inst2|auxA\(6),
	combout => \inst2|Mux2~11_combout\);

-- Location: LCCOMB_X35_Y34_N16
\inst2|Mux2~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux2~14_combout\ = (\inst2|auxA\(8) & ((\inst2|Mux2~11_combout\))) # (!\inst2|auxA\(8) & (\inst2|Mux2~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datac => \inst2|Mux2~13_combout\,
	datad => \inst2|Mux2~11_combout\,
	combout => \inst2|Mux2~14_combout\);

-- Location: LCCOMB_X35_Y34_N22
\inst2|Mux2~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux2~15_combout\ = (\inst2|Mux2~14_combout\ & (((\inst2|auxA\(9))))) # (!\inst2|Mux2~14_combout\ & (\inst2|auxA\(8) $ (((\inst2|auxA\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|auxA\(9),
	datac => \inst2|auxA\(7),
	datad => \inst2|Mux2~14_combout\,
	combout => \inst2|Mux2~15_combout\);

-- Location: LCCOMB_X35_Y34_N26
\inst2|Mux2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux2~6_combout\ = (\inst2|auxA\(7)) # ((\inst2|auxA\(6) & \inst2|Mux2~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(6),
	datac => \inst2|auxA\(7),
	datad => \inst2|Mux2~5_combout\,
	combout => \inst2|Mux2~6_combout\);

-- Location: LCCOMB_X35_Y34_N4
\inst2|Mux2~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux2~7_combout\ = (\inst2|auxA\(8) & ((\inst2|auxA\(9)) # ((!\inst2|Mux2~6_combout\)))) # (!\inst2|auxA\(8) & (!\inst2|auxA\(9) & ((!\inst2|Mux1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|auxA\(9),
	datac => \inst2|Mux2~6_combout\,
	datad => \inst2|Mux1~5_combout\,
	combout => \inst2|Mux2~7_combout\);

-- Location: LCCOMB_X36_Y32_N6
\inst2|Mux2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux2~4_combout\ = (\inst2|Mux2~3_combout\) # ((!\inst2|auxA\(7) & ((!\inst2|Mux5~5_combout\) # (!\inst2|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(7),
	datab => \inst2|Mux7~0_combout\,
	datac => \inst2|Mux2~3_combout\,
	datad => \inst2|Mux5~5_combout\,
	combout => \inst2|Mux2~4_combout\);

-- Location: LCCOMB_X35_Y34_N6
\inst2|Mux2~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux2~8_combout\ = (\inst2|auxA\(9) & ((\inst2|Mux2~7_combout\ & (\inst2|Mux1~7_combout\)) # (!\inst2|Mux2~7_combout\ & ((\inst2|Mux2~4_combout\))))) # (!\inst2|auxA\(9) & (((\inst2|Mux2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(9),
	datab => \inst2|Mux1~7_combout\,
	datac => \inst2|Mux2~7_combout\,
	datad => \inst2|Mux2~4_combout\,
	combout => \inst2|Mux2~8_combout\);

-- Location: LCCOMB_X35_Y34_N8
\inst2|Mux2~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux2~16_combout\ = (!\inst2|auxA\(11) & ((\inst2|auxA\(10) & ((\inst2|Mux2~8_combout\))) # (!\inst2|auxA\(10) & (\inst2|Mux2~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(10),
	datab => \inst2|auxA\(11),
	datac => \inst2|Mux2~15_combout\,
	datad => \inst2|Mux2~8_combout\,
	combout => \inst2|Mux2~16_combout\);

-- Location: LCCOMB_X35_Y32_N12
\inst2|Mux2~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux2~18_combout\ = (\inst2|auxA\(7)) # (\inst2|Mux2~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|auxA\(7),
	datad => \inst2|Mux2~12_combout\,
	combout => \inst2|Mux2~18_combout\);

-- Location: LCCOMB_X35_Y34_N10
\inst2|Mux2~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux2~19_combout\ = (\inst2|auxA\(8) & ((\inst2|auxA\(9)) # ((!\inst2|Mux2~17_combout\)))) # (!\inst2|auxA\(8) & (!\inst2|auxA\(9) & ((!\inst2|Mux2~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(8),
	datab => \inst2|auxA\(9),
	datac => \inst2|Mux2~17_combout\,
	datad => \inst2|Mux2~18_combout\,
	combout => \inst2|Mux2~19_combout\);

-- Location: LCCOMB_X35_Y34_N24
\inst2|Mux2~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux2~20_combout\ = (\inst2|auxA\(9) & ((\inst2|Mux2~19_combout\ & ((\inst2|Mux2~6_combout\))) # (!\inst2|Mux2~19_combout\ & (\inst2|Mux1~5_combout\)))) # (!\inst2|auxA\(9) & (((\inst2|Mux2~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(9),
	datab => \inst2|Mux1~5_combout\,
	datac => \inst2|Mux2~6_combout\,
	datad => \inst2|Mux2~19_combout\,
	combout => \inst2|Mux2~20_combout\);

-- Location: LCCOMB_X35_Y34_N18
\inst2|Mux2~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux2~21_combout\ = (\inst2|Mux2~16_combout\) # ((!\inst2|auxA\(10) & (\inst2|auxA\(11) & \inst2|Mux2~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|auxA\(10),
	datab => \inst2|auxA\(11),
	datac => \inst2|Mux2~16_combout\,
	datad => \inst2|Mux2~20_combout\,
	combout => \inst2|Mux2~21_combout\);

-- Location: LCCOMB_X37_Y36_N12
\inst|LessThan3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|LessThan3~1_cout\ = CARRY((!\inst4|s_triangular_counter\(0) & \inst2|Mux7~188_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_triangular_counter\(0),
	datab => \inst2|Mux7~188_combout\,
	datad => VCC,
	cout => \inst|LessThan3~1_cout\);

-- Location: LCCOMB_X37_Y36_N14
\inst|LessThan3~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|LessThan3~3_cout\ = CARRY((\inst2|Mux6~165_combout\ & (\inst4|s_triangular_counter\(1) & !\inst|LessThan3~1_cout\)) # (!\inst2|Mux6~165_combout\ & ((\inst4|s_triangular_counter\(1)) # (!\inst|LessThan3~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux6~165_combout\,
	datab => \inst4|s_triangular_counter\(1),
	datad => VCC,
	cin => \inst|LessThan3~1_cout\,
	cout => \inst|LessThan3~3_cout\);

-- Location: LCCOMB_X37_Y36_N16
\inst|LessThan3~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|LessThan3~5_cout\ = CARRY((\inst4|s_triangular_counter\(2) & (\inst2|Mux5~88_combout\ & !\inst|LessThan3~3_cout\)) # (!\inst4|s_triangular_counter\(2) & ((\inst2|Mux5~88_combout\) # (!\inst|LessThan3~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_triangular_counter\(2),
	datab => \inst2|Mux5~88_combout\,
	datad => VCC,
	cin => \inst|LessThan3~3_cout\,
	cout => \inst|LessThan3~5_cout\);

-- Location: LCCOMB_X37_Y36_N18
\inst|LessThan3~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|LessThan3~7_cout\ = CARRY((\inst4|s_triangular_counter\(3) & ((!\inst|LessThan3~5_cout\) # (!\inst2|Mux4~59_combout\))) # (!\inst4|s_triangular_counter\(3) & (!\inst2|Mux4~59_combout\ & !\inst|LessThan3~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_triangular_counter\(3),
	datab => \inst2|Mux4~59_combout\,
	datad => VCC,
	cin => \inst|LessThan3~5_cout\,
	cout => \inst|LessThan3~7_cout\);

-- Location: LCCOMB_X37_Y36_N20
\inst|LessThan3~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|LessThan3~9_cout\ = CARRY((\inst4|s_triangular_counter\(4) & (\inst2|Mux3~35_combout\ & !\inst|LessThan3~7_cout\)) # (!\inst4|s_triangular_counter\(4) & ((\inst2|Mux3~35_combout\) # (!\inst|LessThan3~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_triangular_counter\(4),
	datab => \inst2|Mux3~35_combout\,
	datad => VCC,
	cin => \inst|LessThan3~7_cout\,
	cout => \inst|LessThan3~9_cout\);

-- Location: LCCOMB_X37_Y36_N22
\inst|LessThan3~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|LessThan3~11_cout\ = CARRY((\inst4|s_triangular_counter\(5) & ((!\inst|LessThan3~9_cout\) # (!\inst2|Mux2~21_combout\))) # (!\inst4|s_triangular_counter\(5) & (!\inst2|Mux2~21_combout\ & !\inst|LessThan3~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_triangular_counter\(5),
	datab => \inst2|Mux2~21_combout\,
	datad => VCC,
	cin => \inst|LessThan3~9_cout\,
	cout => \inst|LessThan3~11_cout\);

-- Location: LCCOMB_X37_Y36_N24
\inst|LessThan3~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|LessThan3~13_cout\ = CARRY((\inst4|s_triangular_counter\(6) & ((\inst2|Mux1~11_combout\) # (!\inst|LessThan3~11_cout\))) # (!\inst4|s_triangular_counter\(6) & (\inst2|Mux1~11_combout\ & !\inst|LessThan3~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_triangular_counter\(6),
	datab => \inst2|Mux1~11_combout\,
	datad => VCC,
	cin => \inst|LessThan3~11_cout\,
	cout => \inst|LessThan3~13_cout\);

-- Location: LCCOMB_X37_Y36_N26
\inst|LessThan3~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|LessThan3~14_combout\ = (\inst2|Mux0~0_combout\ & ((\inst|LessThan3~13_cout\) # (\inst4|Add2~0_combout\))) # (!\inst2|Mux0~0_combout\ & (\inst|LessThan3~13_cout\ & \inst4|Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mux0~0_combout\,
	datad => \inst4|Add2~0_combout\,
	cin => \inst|LessThan3~13_cout\,
	combout => \inst|LessThan3~14_combout\);

-- Location: FF_X37_Y36_N27
\inst|pwm_output3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|LessThan3~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pwm_output3~q\);

ww_pwm0 <= \pwm0~output_o\;

ww_pwm1 <= \pwm1~output_o\;

ww_pwm2 <= \pwm2~output_o\;

ww_pwm3 <= \pwm3~output_o\;

ww_sine(7) <= \sine[7]~output_o\;

ww_sine(6) <= \sine[6]~output_o\;

ww_sine(5) <= \sine[5]~output_o\;

ww_sine(4) <= \sine[4]~output_o\;

ww_sine(3) <= \sine[3]~output_o\;

ww_sine(2) <= \sine[2]~output_o\;

ww_sine(1) <= \sine[1]~output_o\;

ww_sine(0) <= \sine[0]~output_o\;

ww_triang0(7) <= \triang0[7]~output_o\;

ww_triang0(6) <= \triang0[6]~output_o\;

ww_triang0(5) <= \triang0[5]~output_o\;

ww_triang0(4) <= \triang0[4]~output_o\;

ww_triang0(3) <= \triang0[3]~output_o\;

ww_triang0(2) <= \triang0[2]~output_o\;

ww_triang0(1) <= \triang0[1]~output_o\;

ww_triang0(0) <= \triang0[0]~output_o\;

ww_triang1(7) <= \triang1[7]~output_o\;

ww_triang1(6) <= \triang1[6]~output_o\;

ww_triang1(5) <= \triang1[5]~output_o\;

ww_triang1(4) <= \triang1[4]~output_o\;

ww_triang1(3) <= \triang1[3]~output_o\;

ww_triang1(2) <= \triang1[2]~output_o\;

ww_triang1(1) <= \triang1[1]~output_o\;

ww_triang1(0) <= \triang1[0]~output_o\;

ww_triang2(7) <= \triang2[7]~output_o\;

ww_triang2(6) <= \triang2[6]~output_o\;

ww_triang2(5) <= \triang2[5]~output_o\;

ww_triang2(4) <= \triang2[4]~output_o\;

ww_triang2(3) <= \triang2[3]~output_o\;

ww_triang2(2) <= \triang2[2]~output_o\;

ww_triang2(1) <= \triang2[1]~output_o\;

ww_triang2(0) <= \triang2[0]~output_o\;

ww_triang3(7) <= \triang3[7]~output_o\;

ww_triang3(6) <= \triang3[6]~output_o\;

ww_triang3(5) <= \triang3[5]~output_o\;

ww_triang3(4) <= \triang3[4]~output_o\;

ww_triang3(3) <= \triang3[3]~output_o\;

ww_triang3(2) <= \triang3[2]~output_o\;

ww_triang3(1) <= \triang3[1]~output_o\;

ww_triang3(0) <= \triang3[0]~output_o\;
END structure;


