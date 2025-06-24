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

-- DATE "06/23/2025 23:11:54"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
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

ENTITY 	top_module IS
    PORT (
	clk_50mhz : IN std_logic;
	rst_n : IN std_logic;
	sa1_pwm : OUT std_logic;
	sa2_pwm : OUT std_logic;
	sb1_pwm : OUT std_logic;
	sb2_pwm : OUT std_logic;
	sc1_pwm : OUT std_logic;
	sc2_pwm : OUT std_logic
	);
END top_module;

-- Design Ports Information
-- sa1_pwm	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sa2_pwm	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sb1_pwm	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sb2_pwm	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sc1_pwm	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sc2_pwm	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_n	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50mhz	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_clk_50mhz : std_logic;
SIGNAL ww_rst_n : std_logic;
SIGNAL ww_sa1_pwm : std_logic;
SIGNAL ww_sa2_pwm : std_logic;
SIGNAL ww_sb1_pwm : std_logic;
SIGNAL ww_sb2_pwm : std_logic;
SIGNAL ww_sc1_pwm : std_logic;
SIGNAL ww_sc2_pwm : std_logic;
SIGNAL \rst_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_50mhz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \freq_div_inst|toggle_reg~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~12_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~4_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~8_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~10_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~16_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~24_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~26_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~6_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~4_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~8_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~12_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~24_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~18_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~24_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~2_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~4_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~8_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~10_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~18_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~20_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~24_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~16_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~18_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~20_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~2_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~4_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~8_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~10_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~12_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~20_combout\ : std_logic;
SIGNAL \freq_div_inst|Add0~0_combout\ : std_logic;
SIGNAL \freq_div_inst|Add0~1\ : std_logic;
SIGNAL \freq_div_inst|Add0~2_combout\ : std_logic;
SIGNAL \freq_div_inst|Add0~3\ : std_logic;
SIGNAL \freq_div_inst|Add0~4_combout\ : std_logic;
SIGNAL \freq_div_inst|Add0~5\ : std_logic;
SIGNAL \freq_div_inst|Add0~6_combout\ : std_logic;
SIGNAL \freq_div_inst|Add0~7\ : std_logic;
SIGNAL \freq_div_inst|Add0~8_combout\ : std_logic;
SIGNAL \freq_div_inst|Add0~9\ : std_logic;
SIGNAL \freq_div_inst|Add0~10_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[238]~248_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[237]~250_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[236]~252_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[235]~255_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[234]~256_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[233]~258_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[232]~260_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[231]~263_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[230]~265_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[229]~267_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[228]~269_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[227]~271_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[226]~272_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[225]~274_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[224]~276_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[254]~278_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[253]~279_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[252]~280_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[251]~281_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[249]~283_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[247]~285_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[246]~286_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[245]~287_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[243]~289_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[241]~291_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[269]~294_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[267]~296_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[263]~300_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[261]~302_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[259]~304_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[258]~305_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[286]~306_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[285]~307_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[280]~312_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[278]~314_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[276]~316_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[275]~317_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[274]~319_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[302]~320_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[299]~323_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[293]~329_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[291]~331_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[290]~334_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[318]~335_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[316]~337_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[315]~338_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[314]~339_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[313]~340_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[311]~342_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[310]~343_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[307]~347_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[306]~348_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[332]~352_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[330]~354_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[327]~357_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[323]~362_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[322]~363_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[348]~367_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[344]~371_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[343]~372_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[342]~373_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[340]~375_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[339]~377_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux16~0_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux16~1_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux1~1_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux2~1_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux2~3_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux2~5_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux4~2_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux2~6_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux2~8_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux3~1_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux3~6_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux3~9_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux4~3_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux4~4_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux4~5_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux4~6_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux4~7_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux4~8_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux4~9_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux4~10_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux4~11_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux4~12_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux4~13_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux4~14_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux4~15_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux4~16_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux4~17_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux5~0_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux5~1_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux5~2_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux5~3_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux5~4_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux5~5_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux5~6_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux5~7_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux5~8_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux5~9_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux5~10_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux5~11_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux5~12_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux5~13_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux5~14_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux5~15_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux5~16_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux6~0_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux6~1_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux6~2_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux6~3_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux6~4_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux6~5_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux6~6_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux6~7_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux6~8_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux6~9_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux6~10_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux6~11_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux6~12_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux6~13_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux6~14_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux6~15_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux6~16_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux6~17_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux6~18_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux6~19_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux7~0_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux7~10_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux7~11_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux7~12_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux7~13_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux7~14_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux7~15_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux9~0_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux9~1_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux9~2_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux9~3_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux10~4_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux10~5_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux10~6_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux10~7_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux10~8_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux10~11_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux11~8_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux11~9_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux11~10_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux11~11_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux11~12_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux11~13_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux11~14_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux11~15_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux11~16_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux12~0_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux12~1_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux12~2_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux12~3_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux12~4_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux12~5_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux12~6_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux12~7_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux12~8_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux12~9_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux12~10_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux12~11_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux12~12_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux12~13_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux12~14_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux12~15_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux12~17_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux12~18_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux13~2_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux13~3_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux13~4_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux14~0_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux14~1_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux14~2_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux14~3_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux14~5_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux14~7_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux14~10_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux14~11_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux14~12_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux14~13_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux14~14_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux14~15_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux15~0_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux15~1_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux15~2_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux15~3_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux15~4_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux15~5_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux15~6_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux15~7_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux15~8_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux15~9_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux15~10_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux15~11_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux15~12_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux15~13_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux15~14_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux15~15_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux15~16_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux17~0_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux17~1_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux17~2_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux17~3_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux17~4_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux18~0_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux18~1_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux18~2_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux18~3_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux18~4_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux18~5_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux18~6_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux18~7_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux18~8_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux19~1_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux19~5_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux19~6_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux19~7_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux20~0_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux19~9_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux19~10_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux19~11_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux20~1_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux20~2_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux20~3_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux20~4_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux20~5_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux20~6_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux20~9_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux21~0_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux21~1_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux21~2_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux21~3_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux21~4_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux21~5_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux21~6_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux21~7_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux21~8_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux21~9_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux21~10_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux21~11_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux21~12_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux21~13_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux21~14_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux21~15_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux21~16_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux21~17_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux22~0_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux22~1_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux22~2_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux22~3_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux22~4_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux22~5_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux22~6_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux22~7_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux22~8_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux22~9_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux22~10_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux22~11_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux22~12_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux22~13_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux22~14_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux22~15_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux22~16_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux23~0_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux23~1_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux23~2_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux23~3_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux23~4_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux23~5_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux23~8_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux23~9_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux23~11_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux23~12_combout\ : std_logic;
SIGNAL \freq_div_inst|toggle_reg~q\ : std_logic;
SIGNAL \triangle_gen_inst|direction~q\ : std_logic;
SIGNAL \freq_div_inst|Equal0~0_combout\ : std_logic;
SIGNAL \freq_div_inst|toggle_reg~0_combout\ : std_logic;
SIGNAL \triangle_gen_inst|direction~0_combout\ : std_logic;
SIGNAL \freq_div_inst|counter~0_combout\ : std_logic;
SIGNAL \freq_div_inst|counter~1_combout\ : std_logic;
SIGNAL \freq_div_inst|counter~2_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[270]~379_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[266]~383_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[265]~384_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[260]~389_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[283]~394_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[300]~405_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[297]~408_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[295]~410_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[317]~415_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[312]~420_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[308]~424_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[334]~425_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[333]~426_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[329]~430_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[328]~431_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[325]~434_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[324]~435_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[350]~436_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[349]~437_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[347]~439_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[346]~440_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[345]~441_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[341]~445_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux4~18_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[250]~451_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[248]~453_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux11~17_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux11~18_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux11~19_combout\ : std_logic;
SIGNAL \clk_50mhz~input_o\ : std_logic;
SIGNAL \clk_50mhz~inputclkctrl_outclk\ : std_logic;
SIGNAL \freq_div_inst|toggle_reg~clkctrl_outclk\ : std_logic;
SIGNAL \freq_div_inst|toggle_reg~feeder_combout\ : std_logic;
SIGNAL \sa1_pwm~output_o\ : std_logic;
SIGNAL \sa2_pwm~output_o\ : std_logic;
SIGNAL \sb1_pwm~output_o\ : std_logic;
SIGNAL \sb2_pwm~output_o\ : std_logic;
SIGNAL \sc1_pwm~output_o\ : std_logic;
SIGNAL \sc2_pwm~output_o\ : std_logic;
SIGNAL \triangle_gen_inst|current_value[0]~10\ : std_logic;
SIGNAL \triangle_gen_inst|current_value[1]~12\ : std_logic;
SIGNAL \triangle_gen_inst|current_value[2]~13_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \rst_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \triangle_gen_inst|current_value[1]~11_combout\ : std_logic;
SIGNAL \triangle_gen_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \triangle_gen_inst|current_value[2]~14\ : std_logic;
SIGNAL \triangle_gen_inst|current_value[3]~16\ : std_logic;
SIGNAL \triangle_gen_inst|current_value[4]~17_combout\ : std_logic;
SIGNAL \triangle_gen_inst|current_value[4]~18\ : std_logic;
SIGNAL \triangle_gen_inst|current_value[5]~19_combout\ : std_logic;
SIGNAL \triangle_gen_inst|current_value[3]~15_combout\ : std_logic;
SIGNAL \triangle_gen_inst|LessThan0~1_combout\ : std_logic;
SIGNAL \triangle_gen_inst|current_value[0]~9_combout\ : std_logic;
SIGNAL \triangle_gen_inst|LessThan1~1_combout\ : std_logic;
SIGNAL \triangle_gen_inst|LessThan1~0_combout\ : std_logic;
SIGNAL \triangle_gen_inst|LessThan1~2_combout\ : std_logic;
SIGNAL \triangle_gen_inst|current_value[7]~8_combout\ : std_logic;
SIGNAL \triangle_gen_inst|current_value[5]~20\ : std_logic;
SIGNAL \triangle_gen_inst|current_value[6]~22\ : std_logic;
SIGNAL \triangle_gen_inst|current_value[7]~23_combout\ : std_logic;
SIGNAL \sine_gen_inst|Add0~14_combout\ : std_logic;
SIGNAL \sine_gen_inst|counter~1_combout\ : std_logic;
SIGNAL \sine_gen_inst|Equal0~1_combout\ : std_logic;
SIGNAL \sine_gen_inst|Add0~1\ : std_logic;
SIGNAL \sine_gen_inst|Add0~2_combout\ : std_logic;
SIGNAL \sine_gen_inst|Add0~3\ : std_logic;
SIGNAL \sine_gen_inst|Add0~5\ : std_logic;
SIGNAL \sine_gen_inst|Add0~6_combout\ : std_logic;
SIGNAL \sine_gen_inst|counter~2_combout\ : std_logic;
SIGNAL \sine_gen_inst|Add0~7\ : std_logic;
SIGNAL \sine_gen_inst|Add0~9\ : std_logic;
SIGNAL \sine_gen_inst|Add0~11\ : std_logic;
SIGNAL \sine_gen_inst|Add0~12_combout\ : std_logic;
SIGNAL \sine_gen_inst|Add0~13\ : std_logic;
SIGNAL \sine_gen_inst|Add0~15\ : std_logic;
SIGNAL \sine_gen_inst|Add0~16_combout\ : std_logic;
SIGNAL \sine_gen_inst|Add0~17\ : std_logic;
SIGNAL \sine_gen_inst|Add0~18_combout\ : std_logic;
SIGNAL \sine_gen_inst|Add0~19\ : std_logic;
SIGNAL \sine_gen_inst|Add0~21\ : std_logic;
SIGNAL \sine_gen_inst|Add0~22_combout\ : std_logic;
SIGNAL \sine_gen_inst|Add0~23\ : std_logic;
SIGNAL \sine_gen_inst|Add0~24_combout\ : std_logic;
SIGNAL \sine_gen_inst|Add0~20_combout\ : std_logic;
SIGNAL \sine_gen_inst|Equal0~0_combout\ : std_logic;
SIGNAL \sine_gen_inst|Add0~0_combout\ : std_logic;
SIGNAL \sine_gen_inst|counter~4_combout\ : std_logic;
SIGNAL \sine_gen_inst|Add0~10_combout\ : std_logic;
SIGNAL \sine_gen_inst|Add0~8_combout\ : std_logic;
SIGNAL \sine_gen_inst|Equal0~2_combout\ : std_logic;
SIGNAL \sine_gen_inst|Equal0~3_combout\ : std_logic;
SIGNAL \sine_gen_inst|Add0~25\ : std_logic;
SIGNAL \sine_gen_inst|Add0~26_combout\ : std_logic;
SIGNAL \sine_gen_inst|counter~0_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~7\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~9\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~11\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~13\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~15\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~17\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[10]~19\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[11]~21\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[12]~23\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[13]~25\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[14]~27\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[14]~26_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[238]~249_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[13]~24_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[237]~251_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[12]~22_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[236]~253_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[235]~254_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[10]~18_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[234]~257_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~16_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[233]~259_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[232]~261_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[231]~262_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[230]~264_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[229]~266_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[228]~268_combout\ : std_logic;
SIGNAL \sine_gen_inst|Add0~4_combout\ : std_logic;
SIGNAL \sine_gen_inst|counter~3_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[227]~270_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[226]~273_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[225]~275_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[224]~277_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~1\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~3\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~5\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~7\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~9\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~11\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~13\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~15\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~17\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~19\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~21\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~23\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~25\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~27\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~29_cout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[254]~447_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[253]~448_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[11]~20_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[252]~449_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[251]~450_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~18_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[250]~282_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[249]~452_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~14_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[248]~284_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[247]~454_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[246]~455_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[245]~456_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~6_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[244]~288_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[243]~458_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~2_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[242]~290_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~0_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[241]~292_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~1\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~3\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~5\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~7\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~9\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~11\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~13\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~15\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~17\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~19\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~21\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~23\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~25\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~27_cout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~24_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[270]~293_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~22_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[269]~380_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~20_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[268]~295_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[267]~382_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~16_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[266]~297_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~14_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[265]~298_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~12_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[264]~299_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[263]~386_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~8_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[262]~301_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[244]~457_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[261]~388_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~4_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[260]~303_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[242]~459_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[259]~390_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[258]~460_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~1_cout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~3\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~5\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~7\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~9\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~11\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~13\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~15\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~17\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~19\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~21\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~23\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~25\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~27_cout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~18_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[284]~393_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~20_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[301]~404_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[284]~308_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~18_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[283]~309_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~16_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[282]~310_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~14_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[281]~311_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~10_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[280]~397_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~10_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[279]~313_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[278]~399_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~6_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[277]~315_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~2_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[276]~401_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~0_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[275]~402_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[274]~318_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~1_cout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~3\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~5\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~7\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~9\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~11\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~13\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~15\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~17\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~19\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~21\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~22_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~22_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[286]~391_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~20_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[268]~381_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[285]~392_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~23\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~25\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~27_cout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[318]~414_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~22_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[302]~403_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[301]~321_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~20_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[300]~322_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[282]~395_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[299]~406_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~16_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[298]~324_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~14_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[297]~325_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~12_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[296]~326_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~10_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[295]~327_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~8_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[294]~328_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[293]~412_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~4_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[292]~330_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~2_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[291]~332_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[290]~333_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~1_cout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~3\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~5\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~7\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~9\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~11\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~13\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~15\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~17\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~19\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~21\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~23\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~25\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~27_cout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~22_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[317]~336_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[316]~416_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~12_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[264]~385_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[281]~396_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[298]~407_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[315]~417_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[314]~418_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[262]~387_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[279]~398_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[296]~409_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[313]~419_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~12_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[312]~341_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[277]~400_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[294]~411_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[311]~421_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~6_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[310]~422_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~6_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[309]~344_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[308]~345_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[307]~346_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[306]~349_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~1_cout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~3\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~5\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~7\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~9\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~11\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~13\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~15\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~17\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~19\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~21\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~23\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~25\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~27_cout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~24_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[334]~350_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~22_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[333]~351_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[332]~427_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[331]~353_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~14_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[330]~429_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~14_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[329]~355_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~12_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[328]~356_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[327]~432_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~8_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[326]~358_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~6_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[325]~359_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~4_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[324]~360_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[323]~361_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[322]~364_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~1_cout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~3\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~5\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~7\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~9\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~11\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~13\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~15\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~17\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~19\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~21\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~23\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~25\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~27_cout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux13~0_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~24_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[350]~365_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~22_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[349]~366_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~16_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[331]~428_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[348]~438_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~18_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[347]~368_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~16_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[346]~369_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~14_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[345]~370_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~10_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[344]~442_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~2_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[292]~413_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[309]~423_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[326]~433_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[343]~443_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[342]~444_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~6_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[341]~374_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~2_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[340]~446_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[339]~376_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[338]~378_combout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~1_cout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~3_cout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~5_cout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~7_cout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~9_cout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~11_cout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~13_cout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~15_cout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~17_cout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~19_cout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~21_cout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~23_cout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~25_cout\ : std_logic;
SIGNAL \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux0~4_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux0~3_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux8~0_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux8~1_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux1~2_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux1~3_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux1~0_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux2~2_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux2~7_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux2~9_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux2~0_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux0~2_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux2~10_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux10~0_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux2~11_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux3~11_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux3~10_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux3~12_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux3~0_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux3~2_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux3~5_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux3~4_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux3~3_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux3~7_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux3~8_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux3~13_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux7~2_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux7~3_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux7~4_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux7~5_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux7~6_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux7~7_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux7~1_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux7~8_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux7~9_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux7~16_combout\ : std_logic;
SIGNAL \comp_a_inst|LessThan0~1_cout\ : std_logic;
SIGNAL \comp_a_inst|LessThan0~3_cout\ : std_logic;
SIGNAL \comp_a_inst|LessThan0~5_cout\ : std_logic;
SIGNAL \comp_a_inst|LessThan0~7_cout\ : std_logic;
SIGNAL \comp_a_inst|LessThan0~9_cout\ : std_logic;
SIGNAL \comp_a_inst|LessThan0~11_cout\ : std_logic;
SIGNAL \comp_a_inst|LessThan0~13_cout\ : std_logic;
SIGNAL \comp_a_inst|LessThan0~14_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux8~2_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux8~3_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux9~4_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux10~2_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux10~3_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux10~1_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux10~10_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux2~4_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux10~9_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux10~12_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux10~13_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux13~5_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux13~1_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux13~6_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux13~7_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux13~8_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux13~16_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux13~17_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux13~9_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux13~11_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux13~12_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux13~13_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux13~10_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux13~14_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux13~15_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux14~4_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux14~6_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux14~8_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux14~9_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux14~16_combout\ : std_logic;
SIGNAL \comp_b_inst|LessThan0~1_cout\ : std_logic;
SIGNAL \comp_b_inst|LessThan0~3_cout\ : std_logic;
SIGNAL \comp_b_inst|LessThan0~5_cout\ : std_logic;
SIGNAL \comp_b_inst|LessThan0~7_cout\ : std_logic;
SIGNAL \comp_b_inst|LessThan0~9_cout\ : std_logic;
SIGNAL \comp_b_inst|LessThan0~11_cout\ : std_logic;
SIGNAL \comp_b_inst|LessThan0~13_cout\ : std_logic;
SIGNAL \comp_b_inst|LessThan0~14_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux16~2_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux16~3_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux16~4_combout\ : std_logic;
SIGNAL \triangle_gen_inst|current_value[6]~21_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux19~3_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux19~0_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux19~2_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux19~4_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux19~8_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux19~12_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux20~8_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux20~10_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux20~7_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux20~11_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux20~12_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux20~13_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux12~16_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux20~14_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux20~15_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux20~16_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux20~17_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux20~18_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux23~6_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux23~7_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux23~13_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux23~14_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux23~10_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux23~15_combout\ : std_logic;
SIGNAL \sine_gen_inst|Mux23~16_combout\ : std_logic;
SIGNAL \comp_c_inst|LessThan0~1_cout\ : std_logic;
SIGNAL \comp_c_inst|LessThan0~3_cout\ : std_logic;
SIGNAL \comp_c_inst|LessThan0~5_cout\ : std_logic;
SIGNAL \comp_c_inst|LessThan0~7_cout\ : std_logic;
SIGNAL \comp_c_inst|LessThan0~9_cout\ : std_logic;
SIGNAL \comp_c_inst|LessThan0~11_cout\ : std_logic;
SIGNAL \comp_c_inst|LessThan0~13_cout\ : std_logic;
SIGNAL \comp_c_inst|LessThan0~14_combout\ : std_logic;
SIGNAL \sine_gen_inst|counter\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \triangle_gen_inst|current_value\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \freq_div_inst|counter\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \comp_c_inst|ALT_INV_LessThan0~14_combout\ : std_logic;
SIGNAL \comp_b_inst|ALT_INV_LessThan0~14_combout\ : std_logic;
SIGNAL \comp_a_inst|ALT_INV_LessThan0~14_combout\ : std_logic;

BEGIN

ww_clk_50mhz <= clk_50mhz;
ww_rst_n <= rst_n;
sa1_pwm <= ww_sa1_pwm;
sa2_pwm <= ww_sa2_pwm;
sb1_pwm <= ww_sb1_pwm;
sb2_pwm <= ww_sb2_pwm;
sc1_pwm <= ww_sc1_pwm;
sc2_pwm <= ww_sc2_pwm;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst_n~input_o\);

\clk_50mhz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50mhz~input_o\);

\freq_div_inst|toggle_reg~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \freq_div_inst|toggle_reg~q\);
\comp_c_inst|ALT_INV_LessThan0~14_combout\ <= NOT \comp_c_inst|LessThan0~14_combout\;
\comp_b_inst|ALT_INV_LessThan0~14_combout\ <= NOT \comp_b_inst|LessThan0~14_combout\;
\comp_a_inst|ALT_INV_LessThan0~14_combout\ <= NOT \comp_a_inst|LessThan0~14_combout\;

-- Location: LCCOMB_X19_Y23_N6
\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\ = (\sine_gen_inst|counter\(3) & (\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ $ (GND))) # (!\sine_gen_inst|counter\(3) & 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ & VCC))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\ = CARRY((\sine_gen_inst|counter\(3) & !\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|counter\(3),
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\);

-- Location: LCCOMB_X19_Y23_N14
\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~12_combout\ = (\sine_gen_inst|counter\(7) & ((GND) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~11\))) # (!\sine_gen_inst|counter\(7) & 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~11\ $ (GND)))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~13\ = CARRY((\sine_gen_inst|counter\(7)) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|counter\(7),
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~11\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~12_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~13\);

-- Location: LCCOMB_X19_Y21_N4
\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~4_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~3\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[226]~272_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[226]~273_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~3\ & ((((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[226]~272_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[226]~273_combout\)))))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~5\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~3\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[226]~272_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[226]~273_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[226]~272_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[226]~273_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~3\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~4_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~5\);

-- Location: LCCOMB_X19_Y21_N8
\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~8_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~7\ & ((((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[228]~269_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[228]~268_combout\))))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~7\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[228]~269_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[228]~268_combout\) # (GND))))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~9\ = CARRY((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[228]~269_combout\) # ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[228]~268_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[228]~269_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[228]~268_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~7\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~8_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~9\);

-- Location: LCCOMB_X19_Y21_N10
\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~10_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~9\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[229]~267_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[229]~266_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~9\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[229]~267_combout\ & 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[229]~266_combout\)))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~11\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[229]~267_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[229]~266_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[229]~267_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[229]~266_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~9\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~10_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~11\);

-- Location: LCCOMB_X19_Y21_N16
\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~16_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~15\ & ((((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[232]~260_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[232]~261_combout\))))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~15\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[232]~260_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[232]~261_combout\) # (GND))))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~17\ = CARRY((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[232]~260_combout\) # ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[232]~261_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[232]~260_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[232]~261_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~15\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~16_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~17\);

-- Location: LCCOMB_X19_Y21_N24
\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~24_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~23\ & ((((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[236]~252_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[236]~253_combout\))))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~23\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[236]~252_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[236]~253_combout\) # (GND))))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~25\ = CARRY((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[236]~252_combout\) # ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[236]~253_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[236]~252_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[236]~253_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~23\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~24_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~25\);

-- Location: LCCOMB_X19_Y21_N26
\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~26_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[237]~250_combout\ & (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~25\)))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[237]~250_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[237]~251_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~25\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[237]~251_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~25\) # (GND)))))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~27\ = CARRY(((!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[237]~250_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[237]~251_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[237]~250_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[237]~251_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~25\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~26_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~27\);

-- Location: LCCOMB_X17_Y22_N6
\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~6_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~5\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[244]~457_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[244]~288_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~5\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[244]~457_combout\ & 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[244]~288_combout\)))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~7\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[244]~457_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[244]~288_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[244]~457_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[244]~288_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~5\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~6_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~7\);

-- Location: LCCOMB_X15_Y22_N4
\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~4_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~3\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[259]~304_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[259]~390_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~3\ & ((((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[259]~304_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[259]~390_combout\)))))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~5\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~3\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[259]~304_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[259]~390_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[259]~304_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[259]~390_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~3\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~4_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~5\);

-- Location: LCCOMB_X15_Y22_N8
\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~8_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~7\ & ((((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[261]~302_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[261]~388_combout\))))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~7\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[261]~302_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[261]~388_combout\) # (GND))))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~9\ = CARRY((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[261]~302_combout\) # ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[261]~388_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[261]~302_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[261]~388_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~7\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~8_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~9\);

-- Location: LCCOMB_X15_Y22_N12
\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~12_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~11\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[263]~300_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[263]~386_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~11\ & ((((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[263]~300_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[263]~386_combout\)))))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~13\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~11\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[263]~300_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[263]~386_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[263]~300_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[263]~386_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~11\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~12_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~13\);

-- Location: LCCOMB_X15_Y22_N24
\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~24_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~23\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[269]~294_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[269]~380_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~23\ & ((((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[269]~294_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[269]~380_combout\)))))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~25\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~23\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[269]~294_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[269]~380_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[269]~294_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[269]~380_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~23\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~24_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~25\);

-- Location: LCCOMB_X15_Y21_N20
\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~18_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~17\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[282]~395_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[282]~310_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~17\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[282]~395_combout\ & 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[282]~310_combout\)))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~19\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[282]~395_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[282]~310_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[282]~395_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[282]~310_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~17\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~18_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~19\);

-- Location: LCCOMB_X15_Y21_N26
\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~24_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~23\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[285]~307_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[285]~392_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~23\ & ((((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[285]~307_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[285]~392_combout\)))))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~25\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~23\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[285]~307_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[285]~392_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[285]~307_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[285]~392_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~23\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~24_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~25\);

-- Location: LCCOMB_X13_Y20_N4
\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~2_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[290]~334_combout\ & (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~1_cout\)))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[290]~334_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[290]~333_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~1_cout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[290]~333_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~1_cout\) # (GND)))))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~3\ = CARRY(((!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[290]~334_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[290]~333_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[290]~334_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[290]~333_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~1_cout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~2_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~3\);

-- Location: LCCOMB_X13_Y20_N6
\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~4_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~3\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[291]~331_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[291]~332_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~3\ & ((((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[291]~331_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[291]~332_combout\)))))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~5\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~3\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[291]~331_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[291]~332_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[291]~331_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[291]~332_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~3\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~4_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~5\);

-- Location: LCCOMB_X13_Y20_N10
\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~8_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~7\ & ((((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[293]~329_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[293]~412_combout\))))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~7\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[293]~329_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[293]~412_combout\) # (GND))))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~9\ = CARRY((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[293]~329_combout\) # ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[293]~412_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[293]~329_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[293]~412_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~7\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~8_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~9\);

-- Location: LCCOMB_X13_Y20_N12
\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~10_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~9\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[294]~411_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[294]~328_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~9\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[294]~411_combout\ & 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[294]~328_combout\)))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~11\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[294]~411_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[294]~328_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[294]~411_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[294]~328_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~9\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~10_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~11\);

-- Location: LCCOMB_X13_Y20_N20
\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~18_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~17\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[298]~407_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[298]~324_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~17\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[298]~407_combout\ & 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[298]~324_combout\)))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~19\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[298]~407_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[298]~324_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[298]~407_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[298]~324_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~17\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~18_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~19\);

-- Location: LCCOMB_X13_Y20_N22
\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~20_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~19\ & ((((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[299]~323_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[299]~406_combout\))))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~19\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[299]~323_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[299]~406_combout\) # (GND))))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~21\ = CARRY((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[299]~323_combout\) # ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[299]~406_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[299]~323_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[299]~406_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~19\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~20_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~21\);

-- Location: LCCOMB_X13_Y20_N26
\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~24_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~23\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[301]~404_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[301]~321_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~23\ & ((((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[301]~404_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[301]~321_combout\)))))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~25\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~23\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[301]~404_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[301]~321_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[301]~404_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[301]~321_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~23\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~24_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~25\);

-- Location: LCCOMB_X13_Y21_N18
\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~16_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~15\ & ((((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[313]~340_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[313]~419_combout\))))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~15\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[313]~340_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[313]~419_combout\) # (GND))))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~17\ = CARRY((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[313]~340_combout\) # ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[313]~419_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[313]~340_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[313]~419_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~15\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~16_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~17\);

-- Location: LCCOMB_X13_Y21_N20
\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~18_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~17\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[314]~339_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[314]~418_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~17\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[314]~339_combout\ & 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[314]~418_combout\)))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~19\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[314]~339_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[314]~418_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[314]~339_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[314]~418_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~17\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~18_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~19\);

-- Location: LCCOMB_X13_Y21_N22
\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~20_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~19\ & ((((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[315]~338_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[315]~417_combout\))))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~19\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[315]~338_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[315]~417_combout\) # (GND))))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~21\ = CARRY((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[315]~338_combout\) # ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[315]~417_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[315]~338_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[315]~417_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~19\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~20_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~21\);

-- Location: LCCOMB_X11_Y22_N2
\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~2_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[322]~363_combout\ & (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~1_cout\)))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[322]~363_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[322]~364_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~1_cout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[322]~364_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~1_cout\) # (GND)))))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~3\ = CARRY(((!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[322]~363_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[322]~364_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[322]~363_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[322]~364_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~1_cout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~2_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~3\);

-- Location: LCCOMB_X11_Y22_N4
\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~4_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~3\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[323]~362_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[323]~361_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~3\ & ((((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[323]~362_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[323]~361_combout\)))))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~5\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~3\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[323]~362_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[323]~361_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[323]~362_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[323]~361_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~3\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~4_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~5\);

-- Location: LCCOMB_X11_Y22_N8
\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~8_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~7\ & ((((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[325]~434_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[325]~359_combout\))))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~7\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[325]~434_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[325]~359_combout\) # (GND))))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~9\ = CARRY((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[325]~434_combout\) # ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[325]~359_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[325]~434_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[325]~359_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~7\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~8_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~9\);

-- Location: LCCOMB_X11_Y22_N10
\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~10_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~9\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[326]~433_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[326]~358_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~9\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[326]~433_combout\ & 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[326]~358_combout\)))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~11\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[326]~433_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[326]~358_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[326]~433_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[326]~358_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~9\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~10_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~11\);

-- Location: LCCOMB_X11_Y22_N12
\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~12_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~11\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[327]~357_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[327]~432_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~11\ & ((((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[327]~357_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[327]~432_combout\)))))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~13\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~11\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[327]~357_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[327]~432_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[327]~357_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[327]~432_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~11\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~12_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~13\);

-- Location: LCCOMB_X11_Y22_N20
\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~20_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~19\ & ((((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[331]~428_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[331]~353_combout\))))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~19\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[331]~428_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[331]~353_combout\) # (GND))))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~21\ = CARRY((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[331]~428_combout\) # ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[331]~353_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[331]~428_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[331]~353_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~19\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~20_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~21\);

-- Location: LCCOMB_X16_Y30_N14
\freq_div_inst|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \freq_div_inst|Add0~0_combout\ = \freq_div_inst|counter\(0) $ (VCC)
-- \freq_div_inst|Add0~1\ = CARRY(\freq_div_inst|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freq_div_inst|counter\(0),
	datad => VCC,
	combout => \freq_div_inst|Add0~0_combout\,
	cout => \freq_div_inst|Add0~1\);

-- Location: LCCOMB_X16_Y30_N16
\freq_div_inst|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \freq_div_inst|Add0~2_combout\ = (\freq_div_inst|counter\(1) & (!\freq_div_inst|Add0~1\)) # (!\freq_div_inst|counter\(1) & ((\freq_div_inst|Add0~1\) # (GND)))
-- \freq_div_inst|Add0~3\ = CARRY((!\freq_div_inst|Add0~1\) # (!\freq_div_inst|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_div_inst|counter\(1),
	datad => VCC,
	cin => \freq_div_inst|Add0~1\,
	combout => \freq_div_inst|Add0~2_combout\,
	cout => \freq_div_inst|Add0~3\);

-- Location: LCCOMB_X16_Y30_N18
\freq_div_inst|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \freq_div_inst|Add0~4_combout\ = (\freq_div_inst|counter\(2) & (\freq_div_inst|Add0~3\ $ (GND))) # (!\freq_div_inst|counter\(2) & (!\freq_div_inst|Add0~3\ & VCC))
-- \freq_div_inst|Add0~5\ = CARRY((\freq_div_inst|counter\(2) & !\freq_div_inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_div_inst|counter\(2),
	datad => VCC,
	cin => \freq_div_inst|Add0~3\,
	combout => \freq_div_inst|Add0~4_combout\,
	cout => \freq_div_inst|Add0~5\);

-- Location: LCCOMB_X16_Y30_N20
\freq_div_inst|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \freq_div_inst|Add0~6_combout\ = (\freq_div_inst|counter\(3) & (!\freq_div_inst|Add0~5\)) # (!\freq_div_inst|counter\(3) & ((\freq_div_inst|Add0~5\) # (GND)))
-- \freq_div_inst|Add0~7\ = CARRY((!\freq_div_inst|Add0~5\) # (!\freq_div_inst|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_div_inst|counter\(3),
	datad => VCC,
	cin => \freq_div_inst|Add0~5\,
	combout => \freq_div_inst|Add0~6_combout\,
	cout => \freq_div_inst|Add0~7\);

-- Location: LCCOMB_X16_Y30_N22
\freq_div_inst|Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \freq_div_inst|Add0~8_combout\ = (\freq_div_inst|counter\(4) & (\freq_div_inst|Add0~7\ $ (GND))) # (!\freq_div_inst|counter\(4) & (!\freq_div_inst|Add0~7\ & VCC))
-- \freq_div_inst|Add0~9\ = CARRY((\freq_div_inst|counter\(4) & !\freq_div_inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_div_inst|counter\(4),
	datad => VCC,
	cin => \freq_div_inst|Add0~7\,
	combout => \freq_div_inst|Add0~8_combout\,
	cout => \freq_div_inst|Add0~9\);

-- Location: LCCOMB_X16_Y30_N24
\freq_div_inst|Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \freq_div_inst|Add0~10_combout\ = \freq_div_inst|Add0~9\ $ (\freq_div_inst|counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \freq_div_inst|counter\(5),
	cin => \freq_div_inst|Add0~9\,
	combout => \freq_div_inst|Add0~10_combout\);

-- Location: LCCOMB_X19_Y22_N30
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[238]~248\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[238]~248_combout\ = (\sine_gen_inst|counter\(14) & \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|counter\(14),
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[238]~248_combout\);

-- Location: LCCOMB_X18_Y21_N12
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[237]~250\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[237]~250_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & \sine_gen_inst|counter\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datad => \sine_gen_inst|counter\(13),
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[237]~250_combout\);

-- Location: LCCOMB_X20_Y21_N4
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[236]~252\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[236]~252_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & \sine_gen_inst|counter\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datad => \sine_gen_inst|counter\(12),
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[236]~252_combout\);

-- Location: LCCOMB_X18_Y22_N2
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[235]~255\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[235]~255_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & 
-- \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[11]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[11]~20_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[235]~255_combout\);

-- Location: LCCOMB_X19_Y22_N8
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[234]~256\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[234]~256_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & \sine_gen_inst|counter\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datac => \sine_gen_inst|counter\(10),
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[234]~256_combout\);

-- Location: LCCOMB_X19_Y22_N10
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[233]~258\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[233]~258_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & \sine_gen_inst|counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datad => \sine_gen_inst|counter\(9),
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[233]~258_combout\);

-- Location: LCCOMB_X19_Y22_N4
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[232]~260\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[232]~260_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & \sine_gen_inst|counter\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datad => \sine_gen_inst|counter\(8),
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[232]~260_combout\);

-- Location: LCCOMB_X19_Y22_N22
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[231]~263\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[231]~263_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & 
-- \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~12_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[231]~263_combout\);

-- Location: LCCOMB_X18_Y22_N20
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[230]~265\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[230]~265_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[230]~265_combout\);

-- Location: LCCOMB_X20_Y21_N30
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[229]~267\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[229]~267_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & 
-- \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[229]~267_combout\);

-- Location: LCCOMB_X20_Y21_N6
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[228]~269\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[228]~269_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & 
-- \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[228]~269_combout\);

-- Location: LCCOMB_X18_Y21_N14
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[227]~271\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[227]~271_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[227]~271_combout\);

-- Location: LCCOMB_X20_Y21_N20
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[226]~272\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[226]~272_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & \sine_gen_inst|counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datac => \sine_gen_inst|counter\(2),
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[226]~272_combout\);

-- Location: LCCOMB_X14_Y21_N4
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[225]~274\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[225]~274_combout\ = (\sine_gen_inst|counter\(1) & \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|counter\(1),
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[225]~274_combout\);

-- Location: LCCOMB_X20_Y21_N2
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[224]~276\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[224]~276_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & \triangle_gen_inst|current_value\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datac => \triangle_gen_inst|current_value\(0),
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[224]~276_combout\);

-- Location: LCCOMB_X18_Y21_N16
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[254]~278\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[254]~278_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~26_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[254]~278_combout\);

-- Location: LCCOMB_X18_Y21_N30
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[253]~279\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[253]~279_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~24_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[253]~279_combout\);

-- Location: LCCOMB_X18_Y22_N6
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[252]~280\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[252]~280_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~22_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~22_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[252]~280_combout\);

-- Location: LCCOMB_X17_Y21_N8
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[251]~281\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[251]~281_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~20_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[251]~281_combout\);

-- Location: LCCOMB_X14_Y21_N0
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[249]~283\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[249]~283_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~16_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[249]~283_combout\);

-- Location: LCCOMB_X18_Y22_N4
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[247]~285\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[247]~285_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~12_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~12_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[247]~285_combout\);

-- Location: LCCOMB_X16_Y22_N16
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[246]~286\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[246]~286_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~10_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[246]~286_combout\);

-- Location: LCCOMB_X16_Y21_N24
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[245]~287\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[245]~287_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~8_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[245]~287_combout\);

-- Location: LCCOMB_X17_Y21_N22
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[243]~289\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[243]~289_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~4_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[243]~289_combout\);

-- Location: LCCOMB_X17_Y21_N14
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[241]~291\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[241]~291_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & \triangle_gen_inst|current_value\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datac => \triangle_gen_inst|current_value\(0),
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[241]~291_combout\);

-- Location: LCCOMB_X18_Y22_N22
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[269]~294\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[269]~294_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~22_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[269]~294_combout\);

-- Location: LCCOMB_X16_Y22_N24
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[267]~296\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[267]~296_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~18_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[267]~296_combout\);

-- Location: LCCOMB_X16_Y22_N6
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[263]~300\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[263]~300_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~10_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~10_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[263]~300_combout\);

-- Location: LCCOMB_X17_Y22_N30
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[261]~302\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[261]~302_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~6_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[261]~302_combout\);

-- Location: LCCOMB_X14_Y21_N18
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[259]~304\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[259]~304_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~2_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~2_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[259]~304_combout\);

-- Location: LCCOMB_X14_Y22_N16
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[258]~305\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[258]~305_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~0_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~0_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[258]~305_combout\);

-- Location: LCCOMB_X14_Y22_N2
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[286]~306\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[286]~306_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~24_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~24_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[286]~306_combout\);

-- Location: LCCOMB_X15_Y22_N30
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[285]~307\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[285]~307_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~22_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~22_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[285]~307_combout\);

-- Location: LCCOMB_X16_Y22_N28
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[280]~312\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[280]~312_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~12_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~12_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[280]~312_combout\);

-- Location: LCCOMB_X14_Y21_N8
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[278]~314\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[278]~314_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~8_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~8_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[278]~314_combout\);

-- Location: LCCOMB_X14_Y21_N14
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[276]~316\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[276]~316_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~4_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~4_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[276]~316_combout\);

-- Location: LCCOMB_X14_Y20_N0
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[275]~317\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[275]~317_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~2_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~2_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[275]~317_combout\);

-- Location: LCCOMB_X16_Y21_N12
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[274]~319\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[274]~319_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[274]~319_combout\);

-- Location: LCCOMB_X14_Y20_N2
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[302]~320\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[302]~320_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~24_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[302]~320_combout\);

-- Location: LCCOMB_X10_Y21_N4
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[299]~323\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[299]~323_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~18_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[299]~323_combout\);

-- Location: LCCOMB_X14_Y21_N28
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[293]~329\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[293]~329_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~6_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~6_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[293]~329_combout\);

-- Location: LCCOMB_X12_Y22_N8
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[291]~331\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[291]~331_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ $ 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[291]~331_combout\);

-- Location: LCCOMB_X16_Y20_N12
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[290]~334\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[290]~334_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[290]~334_combout\);

-- Location: LCCOMB_X11_Y20_N16
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[318]~335\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[318]~335_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~24_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[318]~335_combout\);

-- Location: LCCOMB_X10_Y21_N10
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[316]~337\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[316]~337_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~20_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~20_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[316]~337_combout\);

-- Location: LCCOMB_X12_Y20_N26
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[315]~338\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[315]~338_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~18_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~18_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[315]~338_combout\);

-- Location: LCCOMB_X12_Y21_N10
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[314]~339\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[314]~339_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~16_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[314]~339_combout\);

-- Location: LCCOMB_X10_Y21_N0
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[313]~340\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[313]~340_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~14_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[313]~340_combout\);

-- Location: LCCOMB_X12_Y21_N16
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[311]~342\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[311]~342_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~10_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[311]~342_combout\);

-- Location: LCCOMB_X14_Y21_N6
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[310]~343\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[310]~343_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~8_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[310]~343_combout\);

-- Location: LCCOMB_X12_Y20_N2
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[307]~347\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[307]~347_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~2_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[307]~347_combout\);

-- Location: LCCOMB_X16_Y20_N22
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[306]~348\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[306]~348_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[306]~348_combout\);

-- Location: LCCOMB_X12_Y21_N0
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[332]~352\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[332]~352_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~20_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[332]~352_combout\);

-- Location: LCCOMB_X10_Y21_N28
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[330]~354\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[330]~354_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~16_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[330]~354_combout\);

-- Location: LCCOMB_X10_Y21_N14
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[327]~357\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[327]~357_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~10_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~10_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[327]~357_combout\);

-- Location: LCCOMB_X10_Y22_N16
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[323]~362\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[323]~362_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~2_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[323]~362_combout\);

-- Location: LCCOMB_X12_Y22_N4
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[322]~363\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[322]~363_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[322]~363_combout\);

-- Location: LCCOMB_X10_Y22_N4
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[348]~367\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[348]~367_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~20_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~20_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[348]~367_combout\);

-- Location: LCCOMB_X10_Y22_N6
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[344]~371\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[344]~371_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~12_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~12_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[344]~371_combout\);

-- Location: LCCOMB_X11_Y20_N26
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[343]~372\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[343]~372_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~10_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[343]~372_combout\);

-- Location: LCCOMB_X10_Y21_N12
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[342]~373\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[342]~373_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~8_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~8_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[342]~373_combout\);

-- Location: LCCOMB_X11_Y22_N30
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[340]~375\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[340]~375_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~4_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~4_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[340]~375_combout\);

-- Location: LCCOMB_X12_Y22_N16
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[339]~377\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[339]~377_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~2_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[339]~377_combout\);

-- Location: LCCOMB_X12_Y23_N8
\sine_gen_inst|Mux16~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux16~0_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	combout => \sine_gen_inst|Mux16~0_combout\);

-- Location: LCCOMB_X12_Y23_N6
\sine_gen_inst|Mux16~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux16~1_combout\ = (\sine_gen_inst|Mux16~0_combout\) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Mux16~0_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux16~1_combout\);

-- Location: LCCOMB_X12_Y23_N22
\sine_gen_inst|Mux1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux1~1_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & (\sine_gen_inst|Mux13~0_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\)))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & (((\sine_gen_inst|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux13~0_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datac => \sine_gen_inst|Mux1~0_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	combout => \sine_gen_inst|Mux1~1_combout\);

-- Location: LCCOMB_X12_Y23_N12
\sine_gen_inst|Mux2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux2~1_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & \sine_gen_inst|Mux8~0_combout\)))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & (\sine_gen_inst|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datab => \sine_gen_inst|Mux2~0_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datad => \sine_gen_inst|Mux8~0_combout\,
	combout => \sine_gen_inst|Mux2~1_combout\);

-- Location: LCCOMB_X16_Y24_N0
\sine_gen_inst|Mux2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux2~3_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	combout => \sine_gen_inst|Mux2~3_combout\);

-- Location: LCCOMB_X16_Y24_N2
\sine_gen_inst|Mux2~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux2~5_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & (((!\sine_gen_inst|Mux2~4_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & ((\sine_gen_inst|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datac => \sine_gen_inst|Mux2~4_combout\,
	datad => \sine_gen_inst|Mux2~3_combout\,
	combout => \sine_gen_inst|Mux2~5_combout\);

-- Location: LCCOMB_X13_Y22_N8
\sine_gen_inst|Mux4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux4~2_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	combout => \sine_gen_inst|Mux4~2_combout\);

-- Location: LCCOMB_X13_Y22_N26
\sine_gen_inst|Mux2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux2~6_combout\ = (\sine_gen_inst|Mux2~5_combout\) # ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\) # (!\sine_gen_inst|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datac => \sine_gen_inst|Mux4~2_combout\,
	datad => \sine_gen_inst|Mux2~5_combout\,
	combout => \sine_gen_inst|Mux2~6_combout\);

-- Location: LCCOMB_X13_Y22_N22
\sine_gen_inst|Mux2~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux2~8_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[290]~334_combout\ & (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[290]~334_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	combout => \sine_gen_inst|Mux2~8_combout\);

-- Location: LCCOMB_X12_Y24_N12
\sine_gen_inst|Mux3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux3~1_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ $ (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	combout => \sine_gen_inst|Mux3~1_combout\);

-- Location: LCCOMB_X12_Y24_N10
\sine_gen_inst|Mux3~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux3~6_combout\ = (\sine_gen_inst|Mux3~5_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & ((\sine_gen_inst|Mux3~3_combout\))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & 
-- (\sine_gen_inst|Mux3~4_combout\)))) # (!\sine_gen_inst|Mux3~5_combout\ & ((\sine_gen_inst|Mux3~4_combout\) # (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ $ (\sine_gen_inst|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datab => \sine_gen_inst|Mux3~5_combout\,
	datac => \sine_gen_inst|Mux3~4_combout\,
	datad => \sine_gen_inst|Mux3~3_combout\,
	combout => \sine_gen_inst|Mux3~6_combout\);

-- Location: LCCOMB_X13_Y22_N10
\sine_gen_inst|Mux3~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux3~9_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[290]~334_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[290]~334_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	combout => \sine_gen_inst|Mux3~9_combout\);

-- Location: LCCOMB_X11_Y20_N8
\sine_gen_inst|Mux4~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux4~3_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	combout => \sine_gen_inst|Mux4~3_combout\);

-- Location: LCCOMB_X11_Y20_N30
\sine_gen_inst|Mux4~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux4~4_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & 
-- (\sine_gen_inst|Mux4~3_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datac => \sine_gen_inst|Mux4~3_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux4~4_combout\);

-- Location: LCCOMB_X11_Y20_N28
\sine_gen_inst|Mux4~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux4~5_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & (\sine_gen_inst|Mux4~3_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\) # (!\sine_gen_inst|Mux4~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datac => \sine_gen_inst|Mux4~3_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux4~5_combout\);

-- Location: LCCOMB_X12_Y19_N28
\sine_gen_inst|Mux4~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux4~6_combout\ = (\sine_gen_inst|Mux4~5_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & ((\sine_gen_inst|Mux4~18_combout\) # (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)))) # 
-- (!\sine_gen_inst|Mux4~5_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & ((!\sine_gen_inst|Mux4~18_combout\))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux4~5_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datac => \sine_gen_inst|Mux4~18_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux4~6_combout\);

-- Location: LCCOMB_X12_Y19_N10
\sine_gen_inst|Mux4~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux4~7_combout\ = (\sine_gen_inst|Mux4~18_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\) # ((\sine_gen_inst|Mux4~5_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\)))) # 
-- (!\sine_gen_inst|Mux4~18_combout\ & (\sine_gen_inst|Mux4~5_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux4~5_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datac => \sine_gen_inst|Mux4~18_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux4~7_combout\);

-- Location: LCCOMB_X12_Y19_N12
\sine_gen_inst|Mux4~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux4~8_combout\ = (\sine_gen_inst|Mux4~7_combout\ & (\sine_gen_inst|Mux4~4_combout\ & !\sine_gen_inst|Mux4~6_combout\)) # (!\sine_gen_inst|Mux4~7_combout\ & (!\sine_gen_inst|Mux4~4_combout\ & \sine_gen_inst|Mux4~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux4~7_combout\,
	datac => \sine_gen_inst|Mux4~4_combout\,
	datad => \sine_gen_inst|Mux4~6_combout\,
	combout => \sine_gen_inst|Mux4~8_combout\);

-- Location: LCCOMB_X12_Y19_N22
\sine_gen_inst|Mux4~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux4~9_combout\ = (\sine_gen_inst|Mux4~7_combout\ & (\sine_gen_inst|Mux4~4_combout\ & \sine_gen_inst|Mux4~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux4~7_combout\,
	datac => \sine_gen_inst|Mux4~4_combout\,
	datad => \sine_gen_inst|Mux4~6_combout\,
	combout => \sine_gen_inst|Mux4~9_combout\);

-- Location: LCCOMB_X12_Y19_N24
\sine_gen_inst|Mux4~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux4~10_combout\ = (\sine_gen_inst|Mux4~8_combout\ & ((\sine_gen_inst|Mux4~9_combout\ & ((\sine_gen_inst|Mux10~1_combout\))) # (!\sine_gen_inst|Mux4~9_combout\ & (\sine_gen_inst|Mux10~0_combout\)))) # (!\sine_gen_inst|Mux4~8_combout\ & 
-- (((!\sine_gen_inst|Mux4~9_combout\ & \sine_gen_inst|Mux10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux4~8_combout\,
	datab => \sine_gen_inst|Mux10~0_combout\,
	datac => \sine_gen_inst|Mux4~9_combout\,
	datad => \sine_gen_inst|Mux10~1_combout\,
	combout => \sine_gen_inst|Mux4~10_combout\);

-- Location: LCCOMB_X16_Y23_N0
\sine_gen_inst|Mux4~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux4~11_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\)))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	combout => \sine_gen_inst|Mux4~11_combout\);

-- Location: LCCOMB_X16_Y23_N10
\sine_gen_inst|Mux4~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux4~12_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ $ (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & 
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\))))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\) # (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & 
-- ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	combout => \sine_gen_inst|Mux4~12_combout\);

-- Location: LCCOMB_X16_Y23_N20
\sine_gen_inst|Mux4~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux4~13_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	combout => \sine_gen_inst|Mux4~13_combout\);

-- Location: LCCOMB_X16_Y23_N14
\sine_gen_inst|Mux4~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux4~14_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & !\sine_gen_inst|Mux4~13_combout\)))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\)) # (!\sine_gen_inst|Mux4~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux4~12_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datad => \sine_gen_inst|Mux4~13_combout\,
	combout => \sine_gen_inst|Mux4~14_combout\);

-- Location: LCCOMB_X16_Y23_N12
\sine_gen_inst|Mux4~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux4~15_combout\ = \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ $ (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ $ (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	combout => \sine_gen_inst|Mux4~15_combout\);

-- Location: LCCOMB_X16_Y23_N18
\sine_gen_inst|Mux4~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux4~16_combout\ = (\sine_gen_inst|Mux4~14_combout\ & ((\sine_gen_inst|Mux4~15_combout\) # ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\)))) # (!\sine_gen_inst|Mux4~14_combout\ & 
-- (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & \sine_gen_inst|Mux4~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux4~15_combout\,
	datab => \sine_gen_inst|Mux4~14_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datad => \sine_gen_inst|Mux4~11_combout\,
	combout => \sine_gen_inst|Mux4~16_combout\);

-- Location: LCCOMB_X15_Y19_N26
\sine_gen_inst|Mux4~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux4~17_combout\ = (\sine_gen_inst|Mux4~10_combout\) # ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & (\sine_gen_inst|Mux4~16_combout\ $ (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux4~10_combout\,
	datab => \sine_gen_inst|Mux4~16_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	combout => \sine_gen_inst|Mux4~17_combout\);

-- Location: LCCOMB_X16_Y19_N28
\sine_gen_inst|Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux5~0_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux5~0_combout\);

-- Location: LCCOMB_X16_Y19_N18
\sine_gen_inst|Mux5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux5~1_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ $ (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\))))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & 
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux5~1_combout\);

-- Location: LCCOMB_X16_Y19_N24
\sine_gen_inst|Mux5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux5~2_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ $ (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\))))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ $ 
-- (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux5~2_combout\);

-- Location: LCCOMB_X16_Y19_N26
\sine_gen_inst|Mux5~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux5~3_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & (\sine_gen_inst|Mux5~2_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & ((\sine_gen_inst|Mux5~1_combout\))))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & 
-- (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux5~2_combout\,
	datab => \sine_gen_inst|Mux5~1_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	combout => \sine_gen_inst|Mux5~3_combout\);

-- Location: LCCOMB_X16_Y19_N20
\sine_gen_inst|Mux5~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux5~4_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ $ (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & 
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux5~4_combout\);

-- Location: LCCOMB_X16_Y19_N30
\sine_gen_inst|Mux5~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux5~5_combout\ = (\sine_gen_inst|Mux5~3_combout\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\)) # (!\sine_gen_inst|Mux5~4_combout\))) # (!\sine_gen_inst|Mux5~3_combout\ & 
-- (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & \sine_gen_inst|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux5~3_combout\,
	datab => \sine_gen_inst|Mux5~4_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Mux5~0_combout\,
	combout => \sine_gen_inst|Mux5~5_combout\);

-- Location: LCCOMB_X16_Y19_N8
\sine_gen_inst|Mux5~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux5~6_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\)))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ $ (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux5~6_combout\);

-- Location: LCCOMB_X16_Y19_N14
\sine_gen_inst|Mux5~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux5~7_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & (((\sine_gen_inst|Mux5~6_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\)))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\)) # (!\sine_gen_inst|Mux5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datab => \sine_gen_inst|Mux5~1_combout\,
	datac => \sine_gen_inst|Mux5~6_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	combout => \sine_gen_inst|Mux5~7_combout\);

-- Location: LCCOMB_X16_Y19_N12
\sine_gen_inst|Mux5~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux5~8_combout\ = (\sine_gen_inst|Mux5~7_combout\ & ((\sine_gen_inst|Mux5~4_combout\) # ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\)))) # (!\sine_gen_inst|Mux5~7_combout\ & 
-- (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & !\sine_gen_inst|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux5~7_combout\,
	datab => \sine_gen_inst|Mux5~4_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Mux5~0_combout\,
	combout => \sine_gen_inst|Mux5~8_combout\);

-- Location: LCCOMB_X15_Y19_N0
\sine_gen_inst|Mux5~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux5~9_combout\ = (\sine_gen_inst|Mux5~8_combout\ & ((\sine_gen_inst|Mux10~0_combout\) # ((\sine_gen_inst|Mux10~1_combout\ & \sine_gen_inst|Mux5~5_combout\)))) # (!\sine_gen_inst|Mux5~8_combout\ & (\sine_gen_inst|Mux10~1_combout\ & 
-- (\sine_gen_inst|Mux5~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux5~8_combout\,
	datab => \sine_gen_inst|Mux10~1_combout\,
	datac => \sine_gen_inst|Mux5~5_combout\,
	datad => \sine_gen_inst|Mux10~0_combout\,
	combout => \sine_gen_inst|Mux5~9_combout\);

-- Location: LCCOMB_X13_Y19_N4
\sine_gen_inst|Mux5~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux5~10_combout\ = \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ $ (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	combout => \sine_gen_inst|Mux5~10_combout\);

-- Location: LCCOMB_X13_Y19_N10
\sine_gen_inst|Mux5~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux5~11_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ $ (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\))))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	combout => \sine_gen_inst|Mux5~11_combout\);

-- Location: LCCOMB_X13_Y19_N28
\sine_gen_inst|Mux5~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux5~12_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\))) 
-- # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\) # (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	combout => \sine_gen_inst|Mux5~12_combout\);

-- Location: LCCOMB_X13_Y19_N14
\sine_gen_inst|Mux5~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux5~13_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & ((!\sine_gen_inst|Mux5~12_combout\))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & (\sine_gen_inst|Mux5~11_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & 
-- (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux5~11_combout\,
	datab => \sine_gen_inst|Mux5~12_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux5~13_combout\);

-- Location: LCCOMB_X13_Y19_N24
\sine_gen_inst|Mux5~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux5~14_combout\ = \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ $ (\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	combout => \sine_gen_inst|Mux5~14_combout\);

-- Location: LCCOMB_X14_Y19_N0
\sine_gen_inst|Mux5~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux5~15_combout\ = (\sine_gen_inst|Mux5~13_combout\ & ((\sine_gen_inst|Mux5~14_combout\) # ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\)))) # (!\sine_gen_inst|Mux5~13_combout\ & (((!\sine_gen_inst|Mux5~10_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux5~13_combout\,
	datab => \sine_gen_inst|Mux5~14_combout\,
	datac => \sine_gen_inst|Mux5~10_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	combout => \sine_gen_inst|Mux5~15_combout\);

-- Location: LCCOMB_X15_Y19_N6
\sine_gen_inst|Mux5~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux5~16_combout\ = (\sine_gen_inst|Mux5~9_combout\) # ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ $ (!\sine_gen_inst|Mux5~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datab => \sine_gen_inst|Mux5~9_combout\,
	datac => \sine_gen_inst|Mux5~15_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	combout => \sine_gen_inst|Mux5~16_combout\);

-- Location: LCCOMB_X16_Y19_N10
\sine_gen_inst|Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux6~0_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ $ (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\))))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux6~0_combout\);

-- Location: LCCOMB_X16_Y19_N0
\sine_gen_inst|Mux6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux6~1_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & 
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\))))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux6~1_combout\);

-- Location: LCCOMB_X16_Y19_N6
\sine_gen_inst|Mux6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux6~2_combout\ = \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ $ (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux6~2_combout\);

-- Location: LCCOMB_X16_Y19_N16
\sine_gen_inst|Mux6~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux6~3_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & (!\sine_gen_inst|Mux6~2_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & ((\sine_gen_inst|Mux6~1_combout\))))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & 
-- (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux6~2_combout\,
	datab => \sine_gen_inst|Mux6~1_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	combout => \sine_gen_inst|Mux6~3_combout\);

-- Location: LCCOMB_X16_Y19_N22
\sine_gen_inst|Mux6~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux6~4_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & 
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux6~4_combout\);

-- Location: LCCOMB_X16_Y19_N4
\sine_gen_inst|Mux6~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux6~5_combout\ = (\sine_gen_inst|Mux6~3_combout\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\) # (!\sine_gen_inst|Mux6~4_combout\)))) # (!\sine_gen_inst|Mux6~3_combout\ & (\sine_gen_inst|Mux6~0_combout\ & 
-- ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux6~0_combout\,
	datab => \sine_gen_inst|Mux6~3_combout\,
	datac => \sine_gen_inst|Mux6~4_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	combout => \sine_gen_inst|Mux6~5_combout\);

-- Location: LCCOMB_X13_Y19_N22
\sine_gen_inst|Mux6~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux6~6_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ $ (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & 
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\))))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\)) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux6~6_combout\);

-- Location: LCCOMB_X14_Y19_N2
\sine_gen_inst|Mux6~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux6~7_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	combout => \sine_gen_inst|Mux6~7_combout\);

-- Location: LCCOMB_X14_Y19_N4
\sine_gen_inst|Mux6~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux6~8_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & 
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\)) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001110011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	combout => \sine_gen_inst|Mux6~8_combout\);

-- Location: LCCOMB_X14_Y19_N22
\sine_gen_inst|Mux6~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux6~9_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & (\sine_gen_inst|Mux6~8_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & ((!\sine_gen_inst|Mux6~7_combout\))))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & 
-- (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datab => \sine_gen_inst|Mux6~8_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => \sine_gen_inst|Mux6~7_combout\,
	combout => \sine_gen_inst|Mux6~9_combout\);

-- Location: LCCOMB_X14_Y19_N28
\sine_gen_inst|Mux6~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux6~10_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\))))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & 
-- (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	combout => \sine_gen_inst|Mux6~10_combout\);

-- Location: LCCOMB_X14_Y19_N6
\sine_gen_inst|Mux6~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux6~11_combout\ = (\sine_gen_inst|Mux6~9_combout\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\) # (!\sine_gen_inst|Mux6~10_combout\)))) # (!\sine_gen_inst|Mux6~9_combout\ & (!\sine_gen_inst|Mux6~6_combout\ & 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux6~9_combout\,
	datab => \sine_gen_inst|Mux6~6_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Mux6~10_combout\,
	combout => \sine_gen_inst|Mux6~11_combout\);

-- Location: LCCOMB_X15_Y19_N24
\sine_gen_inst|Mux6~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux6~12_combout\ = (\sine_gen_inst|Mux6~5_combout\ & ((\sine_gen_inst|Mux10~1_combout\) # ((\sine_gen_inst|Mux10~0_combout\ & \sine_gen_inst|Mux6~11_combout\)))) # (!\sine_gen_inst|Mux6~5_combout\ & (\sine_gen_inst|Mux10~0_combout\ & 
-- (\sine_gen_inst|Mux6~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux6~5_combout\,
	datab => \sine_gen_inst|Mux10~0_combout\,
	datac => \sine_gen_inst|Mux6~11_combout\,
	datad => \sine_gen_inst|Mux10~1_combout\,
	combout => \sine_gen_inst|Mux6~12_combout\);

-- Location: LCCOMB_X14_Y19_N20
\sine_gen_inst|Mux6~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux6~13_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\)))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	combout => \sine_gen_inst|Mux6~13_combout\);

-- Location: LCCOMB_X14_Y19_N10
\sine_gen_inst|Mux6~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux6~14_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\)))) 
-- # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	combout => \sine_gen_inst|Mux6~14_combout\);

-- Location: LCCOMB_X14_Y19_N8
\sine_gen_inst|Mux6~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux6~15_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\)) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	combout => \sine_gen_inst|Mux6~15_combout\);

-- Location: LCCOMB_X14_Y19_N26
\sine_gen_inst|Mux6~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux6~16_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & ((!\sine_gen_inst|Mux6~15_combout\))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & (\sine_gen_inst|Mux6~14_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & 
-- (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux6~14_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datac => \sine_gen_inst|Mux6~15_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	combout => \sine_gen_inst|Mux6~16_combout\);

-- Location: LCCOMB_X14_Y19_N24
\sine_gen_inst|Mux6~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux6~17_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ $ (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	combout => \sine_gen_inst|Mux6~17_combout\);

-- Location: LCCOMB_X14_Y19_N14
\sine_gen_inst|Mux6~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux6~18_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & (((\sine_gen_inst|Mux6~16_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & ((\sine_gen_inst|Mux6~16_combout\ & 
-- ((!\sine_gen_inst|Mux6~17_combout\))) # (!\sine_gen_inst|Mux6~16_combout\ & (!\sine_gen_inst|Mux6~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Mux6~13_combout\,
	datac => \sine_gen_inst|Mux6~16_combout\,
	datad => \sine_gen_inst|Mux6~17_combout\,
	combout => \sine_gen_inst|Mux6~18_combout\);

-- Location: LCCOMB_X15_Y19_N30
\sine_gen_inst|Mux6~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux6~19_combout\ = (\sine_gen_inst|Mux6~12_combout\) # ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & (\sine_gen_inst|Mux6~18_combout\ $ (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux6~18_combout\,
	datab => \sine_gen_inst|Mux6~12_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	combout => \sine_gen_inst|Mux6~19_combout\);

-- Location: LCCOMB_X11_Y20_N6
\sine_gen_inst|Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux7~0_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & 
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\))))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ $ (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010101011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux7~0_combout\);

-- Location: LCCOMB_X18_Y23_N8
\sine_gen_inst|Mux7~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux7~10_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ $ (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	combout => \sine_gen_inst|Mux7~10_combout\);

-- Location: LCCOMB_X18_Y23_N26
\sine_gen_inst|Mux7~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux7~11_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	combout => \sine_gen_inst|Mux7~11_combout\);

-- Location: LCCOMB_X18_Y23_N20
\sine_gen_inst|Mux7~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux7~12_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\) # (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & 
-- ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	combout => \sine_gen_inst|Mux7~12_combout\);

-- Location: LCCOMB_X18_Y23_N30
\sine_gen_inst|Mux7~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux7~13_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & (!\sine_gen_inst|Mux7~12_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & ((!\sine_gen_inst|Mux7~11_combout\))))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & 
-- (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datab => \sine_gen_inst|Mux7~12_combout\,
	datac => \sine_gen_inst|Mux7~11_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	combout => \sine_gen_inst|Mux7~13_combout\);

-- Location: LCCOMB_X18_Y23_N12
\sine_gen_inst|Mux7~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux7~14_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\)))) 
-- # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\) # ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & 
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	combout => \sine_gen_inst|Mux7~14_combout\);

-- Location: LCCOMB_X18_Y23_N10
\sine_gen_inst|Mux7~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux7~15_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & (((\sine_gen_inst|Mux7~13_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & ((\sine_gen_inst|Mux7~13_combout\ & 
-- ((!\sine_gen_inst|Mux7~14_combout\))) # (!\sine_gen_inst|Mux7~13_combout\ & (!\sine_gen_inst|Mux7~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datab => \sine_gen_inst|Mux7~10_combout\,
	datac => \sine_gen_inst|Mux7~13_combout\,
	datad => \sine_gen_inst|Mux7~14_combout\,
	combout => \sine_gen_inst|Mux7~15_combout\);

-- Location: LCCOMB_X12_Y23_N10
\sine_gen_inst|Mux9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux9~0_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux9~0_combout\);

-- Location: LCCOMB_X12_Y23_N16
\sine_gen_inst|Mux9~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux9~1_combout\ = (\sine_gen_inst|Mux10~1_combout\ & ((\sine_gen_inst|Mux9~0_combout\) # ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & !\sine_gen_inst|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux9~0_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datac => \sine_gen_inst|Mux16~0_combout\,
	datad => \sine_gen_inst|Mux10~1_combout\,
	combout => \sine_gen_inst|Mux9~1_combout\);

-- Location: LCCOMB_X12_Y23_N2
\sine_gen_inst|Mux9~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux9~2_combout\ = (\sine_gen_inst|Mux10~0_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & (!\sine_gen_inst|Mux8~0_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux10~0_combout\,
	datab => \sine_gen_inst|Mux8~0_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux9~2_combout\);

-- Location: LCCOMB_X12_Y23_N20
\sine_gen_inst|Mux9~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux9~3_combout\ = (\sine_gen_inst|Mux9~1_combout\) # ((\sine_gen_inst|Mux9~2_combout\ & ((\sine_gen_inst|Mux1~0_combout\) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux9~1_combout\,
	datab => \sine_gen_inst|Mux9~2_combout\,
	datac => \sine_gen_inst|Mux1~0_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux9~3_combout\);

-- Location: LCCOMB_X16_Y24_N4
\sine_gen_inst|Mux10~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux10~4_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	combout => \sine_gen_inst|Mux10~4_combout\);

-- Location: LCCOMB_X16_Y24_N10
\sine_gen_inst|Mux10~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux10~5_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\) # 
-- ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	combout => \sine_gen_inst|Mux10~5_combout\);

-- Location: LCCOMB_X16_Y24_N8
\sine_gen_inst|Mux10~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux10~6_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & (((!\sine_gen_inst|Mux2~4_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\)))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & ((\sine_gen_inst|Mux10~5_combout\) # ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux10~5_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datac => \sine_gen_inst|Mux2~4_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	combout => \sine_gen_inst|Mux10~6_combout\);

-- Location: LCCOMB_X16_Y24_N6
\sine_gen_inst|Mux10~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux10~7_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & (\sine_gen_inst|Mux10~6_combout\)) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & ((\sine_gen_inst|Mux10~6_combout\ & 
-- ((!\sine_gen_inst|Mux2~3_combout\))) # (!\sine_gen_inst|Mux10~6_combout\ & (\sine_gen_inst|Mux10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datab => \sine_gen_inst|Mux10~6_combout\,
	datac => \sine_gen_inst|Mux10~4_combout\,
	datad => \sine_gen_inst|Mux2~3_combout\,
	combout => \sine_gen_inst|Mux10~7_combout\);

-- Location: LCCOMB_X15_Y24_N6
\sine_gen_inst|Mux10~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux10~8_combout\ = (\sine_gen_inst|Mux10~7_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux10~7_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	combout => \sine_gen_inst|Mux10~8_combout\);

-- Location: LCCOMB_X16_Y24_N12
\sine_gen_inst|Mux10~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux10~11_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\) # (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ $ 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux10~11_combout\);

-- Location: LCCOMB_X17_Y24_N24
\sine_gen_inst|Mux11~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux11~8_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\) # ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	combout => \sine_gen_inst|Mux11~8_combout\);

-- Location: LCCOMB_X17_Y24_N6
\sine_gen_inst|Mux11~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux11~9_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & 
-- \sine_gen_inst|Mux11~8_combout\))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & (((!\sine_gen_inst|Mux11~8_combout\) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Mux11~8_combout\,
	combout => \sine_gen_inst|Mux11~9_combout\);

-- Location: LCCOMB_X15_Y24_N10
\sine_gen_inst|Mux11~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux11~10_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & (((\sine_gen_inst|Mux11~9_combout\) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & (\sine_gen_inst|Mux11~9_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\) 
-- # (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datad => \sine_gen_inst|Mux11~9_combout\,
	combout => \sine_gen_inst|Mux11~10_combout\);

-- Location: LCCOMB_X15_Y24_N20
\sine_gen_inst|Mux11~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux11~11_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & (((\sine_gen_inst|Mux11~9_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & (\sine_gen_inst|Mux11~10_combout\)) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & ((!\sine_gen_inst|Mux11~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux11~10_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Mux11~9_combout\,
	combout => \sine_gen_inst|Mux11~11_combout\);

-- Location: LCCOMB_X17_Y24_N28
\sine_gen_inst|Mux11~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux11~12_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\) # 
-- (!\sine_gen_inst|Mux11~8_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & (((\sine_gen_inst|Mux11~8_combout\) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Mux11~8_combout\,
	combout => \sine_gen_inst|Mux11~12_combout\);

-- Location: LCCOMB_X15_Y24_N22
\sine_gen_inst|Mux11~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux11~13_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & ((\sine_gen_inst|Mux11~12_combout\) # ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & 
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datad => \sine_gen_inst|Mux11~12_combout\,
	combout => \sine_gen_inst|Mux11~13_combout\);

-- Location: LCCOMB_X15_Y24_N4
\sine_gen_inst|Mux11~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux11~14_combout\ = \sine_gen_inst|Mux11~12_combout\ $ (((\sine_gen_inst|Mux11~13_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux11~13_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Mux11~12_combout\,
	combout => \sine_gen_inst|Mux11~14_combout\);

-- Location: LCCOMB_X15_Y24_N30
\sine_gen_inst|Mux11~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux11~15_combout\ = (\sine_gen_inst|Mux10~0_combout\ & ((\sine_gen_inst|Mux11~14_combout\) # ((\sine_gen_inst|Mux10~1_combout\ & \sine_gen_inst|Mux11~11_combout\)))) # (!\sine_gen_inst|Mux10~0_combout\ & (((\sine_gen_inst|Mux10~1_combout\ & 
-- \sine_gen_inst|Mux11~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux10~0_combout\,
	datab => \sine_gen_inst|Mux11~14_combout\,
	datac => \sine_gen_inst|Mux10~1_combout\,
	datad => \sine_gen_inst|Mux11~11_combout\,
	combout => \sine_gen_inst|Mux11~15_combout\);

-- Location: LCCOMB_X15_Y23_N22
\sine_gen_inst|Mux11~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux11~16_combout\ = (\sine_gen_inst|Mux11~15_combout\) # ((\sine_gen_inst|Mux11~17_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux11~17_combout\,
	datac => \sine_gen_inst|Mux11~15_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	combout => \sine_gen_inst|Mux11~16_combout\);

-- Location: LCCOMB_X11_Y24_N12
\sine_gen_inst|Mux12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux12~0_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ $ (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & 
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\))))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & 
-- ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	combout => \sine_gen_inst|Mux12~0_combout\);

-- Location: LCCOMB_X11_Y24_N2
\sine_gen_inst|Mux12~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux12~1_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\) # (\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ $ 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	combout => \sine_gen_inst|Mux12~1_combout\);

-- Location: LCCOMB_X11_Y24_N24
\sine_gen_inst|Mux12~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux12~2_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & ((\sine_gen_inst|Mux12~1_combout\ & ((\sine_gen_inst|Mux12~0_combout\) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\))) # 
-- (!\sine_gen_inst|Mux12~1_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux12~0_combout\,
	datab => \sine_gen_inst|Mux12~1_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	combout => \sine_gen_inst|Mux12~2_combout\);

-- Location: LCCOMB_X11_Y24_N22
\sine_gen_inst|Mux12~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux12~3_combout\ = (\sine_gen_inst|Mux12~0_combout\ & ((\sine_gen_inst|Mux12~1_combout\ $ (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\))) # 
-- (!\sine_gen_inst|Mux12~0_combout\ & (\sine_gen_inst|Mux12~1_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux12~0_combout\,
	datab => \sine_gen_inst|Mux12~1_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	combout => \sine_gen_inst|Mux12~3_combout\);

-- Location: LCCOMB_X11_Y24_N0
\sine_gen_inst|Mux12~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux12~4_combout\ = \sine_gen_inst|Mux12~3_combout\ $ (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & !\sine_gen_inst|Mux12~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datab => \sine_gen_inst|Mux12~2_combout\,
	datac => \sine_gen_inst|Mux12~3_combout\,
	combout => \sine_gen_inst|Mux12~4_combout\);

-- Location: LCCOMB_X12_Y24_N20
\sine_gen_inst|Mux12~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux12~5_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ $ (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & 
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\))))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ $ 
-- (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	combout => \sine_gen_inst|Mux12~5_combout\);

-- Location: LCCOMB_X12_Y24_N2
\sine_gen_inst|Mux12~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux12~6_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	combout => \sine_gen_inst|Mux12~6_combout\);

-- Location: LCCOMB_X12_Y24_N4
\sine_gen_inst|Mux12~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux12~7_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\)))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	combout => \sine_gen_inst|Mux12~7_combout\);

-- Location: LCCOMB_X12_Y24_N30
\sine_gen_inst|Mux12~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux12~8_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & (((\sine_gen_inst|Mux12~7_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\)))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & ((\sine_gen_inst|Mux12~6_combout\) # ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datab => \sine_gen_inst|Mux12~6_combout\,
	datac => \sine_gen_inst|Mux12~7_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	combout => \sine_gen_inst|Mux12~8_combout\);

-- Location: LCCOMB_X12_Y24_N8
\sine_gen_inst|Mux12~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux12~9_combout\ = ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux12~9_combout\);

-- Location: LCCOMB_X12_Y24_N26
\sine_gen_inst|Mux12~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux12~10_combout\ = (\sine_gen_inst|Mux12~8_combout\ & (((\sine_gen_inst|Mux12~9_combout\) # (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\)))) # (!\sine_gen_inst|Mux12~8_combout\ & (!\sine_gen_inst|Mux12~5_combout\ & 
-- ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux12~8_combout\,
	datab => \sine_gen_inst|Mux12~5_combout\,
	datac => \sine_gen_inst|Mux12~9_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	combout => \sine_gen_inst|Mux12~10_combout\);

-- Location: LCCOMB_X15_Y24_N12
\sine_gen_inst|Mux12~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux12~11_combout\ = (\sine_gen_inst|Mux12~4_combout\ & ((\sine_gen_inst|Mux10~1_combout\) # ((\sine_gen_inst|Mux12~10_combout\ & \sine_gen_inst|Mux10~0_combout\)))) # (!\sine_gen_inst|Mux12~4_combout\ & (\sine_gen_inst|Mux12~10_combout\ & 
-- ((\sine_gen_inst|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux12~4_combout\,
	datab => \sine_gen_inst|Mux12~10_combout\,
	datac => \sine_gen_inst|Mux10~1_combout\,
	datad => \sine_gen_inst|Mux10~0_combout\,
	combout => \sine_gen_inst|Mux12~11_combout\);

-- Location: LCCOMB_X18_Y23_N28
\sine_gen_inst|Mux12~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux12~12_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\)) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	combout => \sine_gen_inst|Mux12~12_combout\);

-- Location: LCCOMB_X18_Y23_N14
\sine_gen_inst|Mux12~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux12~13_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ $ 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ $ 
-- (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	combout => \sine_gen_inst|Mux12~13_combout\);

-- Location: LCCOMB_X18_Y23_N0
\sine_gen_inst|Mux12~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux12~14_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & ((\sine_gen_inst|Mux12~12_combout\))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & (!\sine_gen_inst|Mux12~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datab => \sine_gen_inst|Mux12~13_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Mux12~12_combout\,
	combout => \sine_gen_inst|Mux12~14_combout\);

-- Location: LCCOMB_X18_Y24_N8
\sine_gen_inst|Mux12~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux12~15_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux12~15_combout\);

-- Location: LCCOMB_X15_Y24_N8
\sine_gen_inst|Mux12~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux12~17_combout\ = (\sine_gen_inst|Mux12~14_combout\) # ((\sine_gen_inst|Mux12~15_combout\ & (\sine_gen_inst|Mux12~16_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux12~15_combout\,
	datab => \sine_gen_inst|Mux12~16_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Mux12~14_combout\,
	combout => \sine_gen_inst|Mux12~17_combout\);

-- Location: LCCOMB_X15_Y24_N14
\sine_gen_inst|Mux12~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux12~18_combout\ = (\sine_gen_inst|Mux12~11_combout\) # ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & (\sine_gen_inst|Mux12~17_combout\ $ (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux12~11_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	datac => \sine_gen_inst|Mux12~17_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	combout => \sine_gen_inst|Mux12~18_combout\);

-- Location: LCCOMB_X14_Y24_N2
\sine_gen_inst|Mux13~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux13~2_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & 
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux13~2_combout\);

-- Location: LCCOMB_X14_Y24_N16
\sine_gen_inst|Mux13~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux13~3_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\))) 
-- # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & 
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux13~3_combout\);

-- Location: LCCOMB_X14_Y24_N26
\sine_gen_inst|Mux13~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux13~4_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & (!\sine_gen_inst|Mux13~3_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & (((\sine_gen_inst|Mux13~2_combout\) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datab => \sine_gen_inst|Mux13~3_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datad => \sine_gen_inst|Mux13~2_combout\,
	combout => \sine_gen_inst|Mux13~4_combout\);

-- Location: LCCOMB_X14_Y24_N4
\sine_gen_inst|Mux14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux14~0_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ $ 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & 
-- ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & 
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux14~0_combout\);

-- Location: LCCOMB_X14_Y24_N18
\sine_gen_inst|Mux14~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux14~1_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ $ 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux14~1_combout\);

-- Location: LCCOMB_X14_Y24_N12
\sine_gen_inst|Mux14~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux14~2_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & 
-- ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux14~2_combout\);

-- Location: LCCOMB_X14_Y24_N22
\sine_gen_inst|Mux14~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux14~3_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & (!\sine_gen_inst|Mux14~2_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & ((\sine_gen_inst|Mux14~1_combout\))))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & 
-- (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux14~2_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => \sine_gen_inst|Mux14~1_combout\,
	combout => \sine_gen_inst|Mux14~3_combout\);

-- Location: LCCOMB_X14_Y24_N6
\sine_gen_inst|Mux14~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux14~5_combout\ = (\sine_gen_inst|Mux14~3_combout\ & ((\sine_gen_inst|Mux14~4_combout\) # ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\)))) # (!\sine_gen_inst|Mux14~3_combout\ & 
-- (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & !\sine_gen_inst|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux14~3_combout\,
	datab => \sine_gen_inst|Mux14~4_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datad => \sine_gen_inst|Mux14~0_combout\,
	combout => \sine_gen_inst|Mux14~5_combout\);

-- Location: LCCOMB_X14_Y24_N10
\sine_gen_inst|Mux14~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux14~7_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & (\sine_gen_inst|Mux14~2_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & ((!\sine_gen_inst|Mux14~1_combout\))))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & 
-- (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux14~2_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => \sine_gen_inst|Mux14~1_combout\,
	combout => \sine_gen_inst|Mux14~7_combout\);

-- Location: LCCOMB_X17_Y20_N2
\sine_gen_inst|Mux14~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux14~10_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	combout => \sine_gen_inst|Mux14~10_combout\);

-- Location: LCCOMB_X17_Y20_N24
\sine_gen_inst|Mux14~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux14~11_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ $ 
-- (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	combout => \sine_gen_inst|Mux14~11_combout\);

-- Location: LCCOMB_X17_Y20_N18
\sine_gen_inst|Mux14~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux14~12_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ $ (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\))))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & 
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	combout => \sine_gen_inst|Mux14~12_combout\);

-- Location: LCCOMB_X17_Y20_N20
\sine_gen_inst|Mux14~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux14~13_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & (\sine_gen_inst|Mux14~12_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & (((!\sine_gen_inst|Mux14~11_combout\) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datab => \sine_gen_inst|Mux14~12_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datad => \sine_gen_inst|Mux14~11_combout\,
	combout => \sine_gen_inst|Mux14~13_combout\);

-- Location: LCCOMB_X17_Y20_N10
\sine_gen_inst|Mux14~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux14~14_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\))) 
-- # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	combout => \sine_gen_inst|Mux14~14_combout\);

-- Location: LCCOMB_X17_Y20_N28
\sine_gen_inst|Mux14~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux14~15_combout\ = (\sine_gen_inst|Mux14~13_combout\ & ((\sine_gen_inst|Mux14~14_combout\) # ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)))) # (!\sine_gen_inst|Mux14~13_combout\ & 
-- (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & \sine_gen_inst|Mux14~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux14~14_combout\,
	datab => \sine_gen_inst|Mux14~13_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datad => \sine_gen_inst|Mux14~10_combout\,
	combout => \sine_gen_inst|Mux14~15_combout\);

-- Location: LCCOMB_X12_Y19_N26
\sine_gen_inst|Mux15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux15~0_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\)) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ $ (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux15~0_combout\);

-- Location: LCCOMB_X12_Y19_N8
\sine_gen_inst|Mux15~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux15~1_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ $ (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux15~1_combout\);

-- Location: LCCOMB_X12_Y19_N6
\sine_gen_inst|Mux15~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux15~2_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\))))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux15~2_combout\);

-- Location: LCCOMB_X12_Y19_N4
\sine_gen_inst|Mux15~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux15~3_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & (\sine_gen_inst|Mux15~2_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\)))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & (((\sine_gen_inst|Mux15~1_combout\) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux15~2_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datac => \sine_gen_inst|Mux15~1_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	combout => \sine_gen_inst|Mux15~3_combout\);

-- Location: LCCOMB_X12_Y19_N18
\sine_gen_inst|Mux15~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux15~4_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ 
-- & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\) # (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux15~4_combout\);

-- Location: LCCOMB_X12_Y19_N16
\sine_gen_inst|Mux15~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux15~5_combout\ = (\sine_gen_inst|Mux15~3_combout\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\) # (!\sine_gen_inst|Mux15~4_combout\)))) # (!\sine_gen_inst|Mux15~3_combout\ & (\sine_gen_inst|Mux15~0_combout\ & 
-- ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux15~0_combout\,
	datab => \sine_gen_inst|Mux15~4_combout\,
	datac => \sine_gen_inst|Mux15~3_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	combout => \sine_gen_inst|Mux15~5_combout\);

-- Location: LCCOMB_X12_Y19_N2
\sine_gen_inst|Mux15~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux15~6_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ $ (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux15~6_combout\);

-- Location: LCCOMB_X12_Y19_N0
\sine_gen_inst|Mux15~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux15~7_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & (!\sine_gen_inst|Mux15~2_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\)))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\) # (!\sine_gen_inst|Mux15~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux15~2_combout\,
	datab => \sine_gen_inst|Mux15~6_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	combout => \sine_gen_inst|Mux15~7_combout\);

-- Location: LCCOMB_X12_Y19_N30
\sine_gen_inst|Mux15~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux15~8_combout\ = (\sine_gen_inst|Mux15~7_combout\ & ((\sine_gen_inst|Mux15~4_combout\) # ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\)))) # (!\sine_gen_inst|Mux15~7_combout\ & (((!\sine_gen_inst|Mux15~0_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux15~7_combout\,
	datab => \sine_gen_inst|Mux15~4_combout\,
	datac => \sine_gen_inst|Mux15~0_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	combout => \sine_gen_inst|Mux15~8_combout\);

-- Location: LCCOMB_X12_Y19_N20
\sine_gen_inst|Mux15~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux15~9_combout\ = (\sine_gen_inst|Mux10~0_combout\ & ((\sine_gen_inst|Mux15~8_combout\) # ((\sine_gen_inst|Mux15~5_combout\ & \sine_gen_inst|Mux10~1_combout\)))) # (!\sine_gen_inst|Mux10~0_combout\ & (\sine_gen_inst|Mux15~5_combout\ & 
-- ((\sine_gen_inst|Mux10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux10~0_combout\,
	datab => \sine_gen_inst|Mux15~5_combout\,
	datac => \sine_gen_inst|Mux15~8_combout\,
	datad => \sine_gen_inst|Mux10~1_combout\,
	combout => \sine_gen_inst|Mux15~9_combout\);

-- Location: LCCOMB_X18_Y23_N2
\sine_gen_inst|Mux15~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux15~10_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ 
-- & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ $ (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	combout => \sine_gen_inst|Mux15~10_combout\);

-- Location: LCCOMB_X18_Y23_N16
\sine_gen_inst|Mux15~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux15~11_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	combout => \sine_gen_inst|Mux15~11_combout\);

-- Location: LCCOMB_X18_Y23_N18
\sine_gen_inst|Mux15~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux15~12_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\)))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\) # (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ $ 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	combout => \sine_gen_inst|Mux15~12_combout\);

-- Location: LCCOMB_X18_Y23_N24
\sine_gen_inst|Mux15~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux15~13_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & (!\sine_gen_inst|Mux15~12_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & (((!\sine_gen_inst|Mux15~11_combout\) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Mux15~12_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Mux15~11_combout\,
	combout => \sine_gen_inst|Mux15~13_combout\);

-- Location: LCCOMB_X18_Y23_N22
\sine_gen_inst|Mux15~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux15~14_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ $ 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	combout => \sine_gen_inst|Mux15~14_combout\);

-- Location: LCCOMB_X18_Y23_N4
\sine_gen_inst|Mux15~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux15~15_combout\ = (\sine_gen_inst|Mux15~13_combout\ & ((\sine_gen_inst|Mux15~14_combout\) # ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\)))) # (!\sine_gen_inst|Mux15~13_combout\ & 
-- (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & \sine_gen_inst|Mux15~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux15~14_combout\,
	datab => \sine_gen_inst|Mux15~13_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Mux15~10_combout\,
	combout => \sine_gen_inst|Mux15~15_combout\);

-- Location: LCCOMB_X15_Y23_N30
\sine_gen_inst|Mux15~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux15~16_combout\ = (\sine_gen_inst|Mux15~9_combout\) # ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ $ (!\sine_gen_inst|Mux15~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datac => \sine_gen_inst|Mux15~9_combout\,
	datad => \sine_gen_inst|Mux15~15_combout\,
	combout => \sine_gen_inst|Mux15~16_combout\);

-- Location: LCCOMB_X17_Y23_N28
\sine_gen_inst|Mux17~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux17~0_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	combout => \sine_gen_inst|Mux17~0_combout\);

-- Location: LCCOMB_X12_Y22_N10
\sine_gen_inst|Mux17~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux17~1_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ $ 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	combout => \sine_gen_inst|Mux17~1_combout\);

-- Location: LCCOMB_X17_Y23_N6
\sine_gen_inst|Mux17~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux17~2_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\) # ((\sine_gen_inst|Mux17~0_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\) # (!\sine_gen_inst|Mux17~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux17~1_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datad => \sine_gen_inst|Mux17~0_combout\,
	combout => \sine_gen_inst|Mux17~2_combout\);

-- Location: LCCOMB_X17_Y23_N0
\sine_gen_inst|Mux17~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux17~3_combout\ = (\sine_gen_inst|Mux17~1_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ $ (!\sine_gen_inst|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux17~1_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datad => \sine_gen_inst|Mux17~0_combout\,
	combout => \sine_gen_inst|Mux17~3_combout\);

-- Location: LCCOMB_X17_Y23_N26
\sine_gen_inst|Mux17~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux17~4_combout\ = (\sine_gen_inst|Mux17~2_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ $ (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\) # (!\sine_gen_inst|Mux17~3_combout\))))) # 
-- (!\sine_gen_inst|Mux17~2_combout\ & ((\sine_gen_inst|Mux17~3_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\)) # (!\sine_gen_inst|Mux17~3_combout\ & 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux17~2_combout\,
	datab => \sine_gen_inst|Mux17~3_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	combout => \sine_gen_inst|Mux17~4_combout\);

-- Location: LCCOMB_X17_Y23_N24
\sine_gen_inst|Mux18~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux18~0_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	combout => \sine_gen_inst|Mux18~0_combout\);

-- Location: LCCOMB_X13_Y22_N24
\sine_gen_inst|Mux18~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux18~1_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)) 
-- # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	combout => \sine_gen_inst|Mux18~1_combout\);

-- Location: LCCOMB_X13_Y22_N6
\sine_gen_inst|Mux18~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux18~2_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & (\sine_gen_inst|Mux18~1_combout\ $ 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datab => \sine_gen_inst|Mux18~1_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux18~2_combout\);

-- Location: LCCOMB_X13_Y22_N28
\sine_gen_inst|Mux18~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux18~3_combout\ = (\sine_gen_inst|Mux18~2_combout\) # ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[290]~334_combout\ & 
-- \sine_gen_inst|Mux16~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux18~2_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[290]~334_combout\,
	datad => \sine_gen_inst|Mux16~2_combout\,
	combout => \sine_gen_inst|Mux18~3_combout\);

-- Location: LCCOMB_X12_Y20_N16
\sine_gen_inst|Mux18~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux18~4_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\)) 
-- # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	combout => \sine_gen_inst|Mux18~4_combout\);

-- Location: LCCOMB_X13_Y22_N30
\sine_gen_inst|Mux18~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux18~5_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ $ (\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ $ 
-- (!\sine_gen_inst|Mux18~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datad => \sine_gen_inst|Mux18~4_combout\,
	combout => \sine_gen_inst|Mux18~5_combout\);

-- Location: LCCOMB_X13_Y22_N0
\sine_gen_inst|Mux18~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux18~6_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	combout => \sine_gen_inst|Mux18~6_combout\);

-- Location: LCCOMB_X13_Y22_N14
\sine_gen_inst|Mux18~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux18~7_combout\ = (\sine_gen_inst|Mux18~5_combout\) # ((\sine_gen_inst|Mux18~3_combout\) # ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[290]~334_combout\ & \sine_gen_inst|Mux18~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux18~5_combout\,
	datab => \sine_gen_inst|Mux18~3_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[290]~334_combout\,
	datad => \sine_gen_inst|Mux18~6_combout\,
	combout => \sine_gen_inst|Mux18~7_combout\);

-- Location: LCCOMB_X17_Y23_N30
\sine_gen_inst|Mux18~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux18~8_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ $ (!\sine_gen_inst|Mux18~0_combout\)))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & (\sine_gen_inst|Mux18~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux18~7_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datad => \sine_gen_inst|Mux18~0_combout\,
	combout => \sine_gen_inst|Mux18~8_combout\);

-- Location: LCCOMB_X16_Y23_N6
\sine_gen_inst|Mux19~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux19~1_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux19~1_combout\);

-- Location: LCCOMB_X16_Y23_N2
\sine_gen_inst|Mux19~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux19~5_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux19~5_combout\);

-- Location: LCCOMB_X16_Y23_N24
\sine_gen_inst|Mux19~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux19~6_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & (\sine_gen_inst|Mux19~1_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & ((!\sine_gen_inst|Mux19~5_combout\))))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & 
-- (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux19~1_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datad => \sine_gen_inst|Mux19~5_combout\,
	combout => \sine_gen_inst|Mux19~6_combout\);

-- Location: LCCOMB_X16_Y23_N22
\sine_gen_inst|Mux19~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux19~7_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & (((\sine_gen_inst|Mux19~6_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & ((\sine_gen_inst|Mux19~6_combout\ & 
-- ((!\sine_gen_inst|Mux19~3_combout\))) # (!\sine_gen_inst|Mux19~6_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datac => \sine_gen_inst|Mux19~3_combout\,
	datad => \sine_gen_inst|Mux19~6_combout\,
	combout => \sine_gen_inst|Mux19~7_combout\);

-- Location: LCCOMB_X13_Y19_N0
\sine_gen_inst|Mux20~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux20~0_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux20~0_combout\);

-- Location: LCCOMB_X13_Y19_N18
\sine_gen_inst|Mux19~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux19~9_combout\ = (\sine_gen_inst|Mux20~0_combout\ & (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => \sine_gen_inst|Mux20~0_combout\,
	combout => \sine_gen_inst|Mux19~9_combout\);

-- Location: LCCOMB_X13_Y19_N12
\sine_gen_inst|Mux19~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux19~10_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux19~10_combout\);

-- Location: LCCOMB_X13_Y19_N30
\sine_gen_inst|Mux19~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux19~11_combout\ = (\sine_gen_inst|Mux19~9_combout\) # ((\sine_gen_inst|Mux19~10_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux19~10_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => \sine_gen_inst|Mux19~9_combout\,
	combout => \sine_gen_inst|Mux19~11_combout\);

-- Location: LCCOMB_X17_Y24_N2
\sine_gen_inst|Mux20~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux20~1_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	combout => \sine_gen_inst|Mux20~1_combout\);

-- Location: LCCOMB_X17_Y24_N16
\sine_gen_inst|Mux20~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux20~2_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ $ 
-- (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	combout => \sine_gen_inst|Mux20~2_combout\);

-- Location: LCCOMB_X17_Y24_N18
\sine_gen_inst|Mux20~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux20~3_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	combout => \sine_gen_inst|Mux20~3_combout\);

-- Location: LCCOMB_X17_Y24_N8
\sine_gen_inst|Mux20~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux20~4_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & !\sine_gen_inst|Mux20~3_combout\)))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\)) # (!\sine_gen_inst|Mux20~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010110110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datab => \sine_gen_inst|Mux20~2_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Mux20~3_combout\,
	combout => \sine_gen_inst|Mux20~4_combout\);

-- Location: LCCOMB_X17_Y24_N30
\sine_gen_inst|Mux20~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux20~5_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ $ 
-- (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	combout => \sine_gen_inst|Mux20~5_combout\);

-- Location: LCCOMB_X17_Y24_N4
\sine_gen_inst|Mux20~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux20~6_combout\ = (\sine_gen_inst|Mux20~4_combout\ & ((\sine_gen_inst|Mux20~5_combout\) # ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\)))) # (!\sine_gen_inst|Mux20~4_combout\ & 
-- (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & \sine_gen_inst|Mux20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux20~5_combout\,
	datab => \sine_gen_inst|Mux20~4_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Mux20~1_combout\,
	combout => \sine_gen_inst|Mux20~6_combout\);

-- Location: LCCOMB_X17_Y24_N22
\sine_gen_inst|Mux20~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux20~9_combout\ = \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ $ (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & 
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	combout => \sine_gen_inst|Mux20~9_combout\);

-- Location: LCCOMB_X14_Y23_N16
\sine_gen_inst|Mux21~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux21~0_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ $ 
-- (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100010011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux21~0_combout\);

-- Location: LCCOMB_X14_Y23_N18
\sine_gen_inst|Mux21~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux21~1_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux21~1_combout\);

-- Location: LCCOMB_X14_Y23_N12
\sine_gen_inst|Mux21~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux21~2_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux21~2_combout\);

-- Location: LCCOMB_X14_Y23_N26
\sine_gen_inst|Mux21~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux21~3_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & (!\sine_gen_inst|Mux21~2_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\)))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & (((\sine_gen_inst|Mux21~1_combout\) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux21~2_combout\,
	datab => \sine_gen_inst|Mux21~1_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	combout => \sine_gen_inst|Mux21~3_combout\);

-- Location: LCCOMB_X14_Y23_N4
\sine_gen_inst|Mux21~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux21~4_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux21~4_combout\);

-- Location: LCCOMB_X14_Y23_N10
\sine_gen_inst|Mux21~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux21~5_combout\ = (\sine_gen_inst|Mux21~3_combout\ & (((\sine_gen_inst|Mux21~4_combout\) # (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\)))) # (!\sine_gen_inst|Mux21~3_combout\ & (!\sine_gen_inst|Mux21~0_combout\ & 
-- ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux21~3_combout\,
	datab => \sine_gen_inst|Mux21~0_combout\,
	datac => \sine_gen_inst|Mux21~4_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	combout => \sine_gen_inst|Mux21~5_combout\);

-- Location: LCCOMB_X14_Y23_N28
\sine_gen_inst|Mux21~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux21~6_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & (\sine_gen_inst|Mux21~2_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\)))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\) # (!\sine_gen_inst|Mux21~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux21~2_combout\,
	datab => \sine_gen_inst|Mux21~1_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	combout => \sine_gen_inst|Mux21~6_combout\);

-- Location: LCCOMB_X14_Y23_N22
\sine_gen_inst|Mux21~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux21~7_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux21~7_combout\);

-- Location: LCCOMB_X14_Y23_N24
\sine_gen_inst|Mux21~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux21~8_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & (\sine_gen_inst|Mux21~6_combout\)) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & ((\sine_gen_inst|Mux21~6_combout\ & 
-- (!\sine_gen_inst|Mux21~7_combout\)) # (!\sine_gen_inst|Mux21~6_combout\ & ((\sine_gen_inst|Mux21~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datab => \sine_gen_inst|Mux21~6_combout\,
	datac => \sine_gen_inst|Mux21~7_combout\,
	datad => \sine_gen_inst|Mux21~0_combout\,
	combout => \sine_gen_inst|Mux21~8_combout\);

-- Location: LCCOMB_X14_Y23_N30
\sine_gen_inst|Mux21~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux21~9_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & (\sine_gen_inst|Mux21~5_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & ((\sine_gen_inst|Mux21~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux21~5_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datad => \sine_gen_inst|Mux21~8_combout\,
	combout => \sine_gen_inst|Mux21~9_combout\);

-- Location: LCCOMB_X14_Y19_N12
\sine_gen_inst|Mux21~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux21~10_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ $ 
-- (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	combout => \sine_gen_inst|Mux21~10_combout\);

-- Location: LCCOMB_X14_Y19_N30
\sine_gen_inst|Mux21~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux21~11_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ $ 
-- (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	combout => \sine_gen_inst|Mux21~11_combout\);

-- Location: LCCOMB_X14_Y19_N16
\sine_gen_inst|Mux21~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux21~12_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & (\sine_gen_inst|Mux21~10_combout\)) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & ((!\sine_gen_inst|Mux21~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux21~10_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datac => \sine_gen_inst|Mux21~11_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	combout => \sine_gen_inst|Mux21~12_combout\);

-- Location: LCCOMB_X14_Y23_N20
\sine_gen_inst|Mux21~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux21~13_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\))))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & 
-- (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	combout => \sine_gen_inst|Mux21~13_combout\);

-- Location: LCCOMB_X14_Y23_N14
\sine_gen_inst|Mux21~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux21~14_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & ((\sine_gen_inst|Mux21~12_combout\) # ((!\sine_gen_inst|Mux21~13_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datab => \sine_gen_inst|Mux21~13_combout\,
	datac => \sine_gen_inst|Mux21~12_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux21~14_combout\);

-- Location: LCCOMB_X14_Y19_N18
\sine_gen_inst|Mux21~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux21~15_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & (!\sine_gen_inst|Mux21~10_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & ((\sine_gen_inst|Mux21~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux21~10_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datac => \sine_gen_inst|Mux21~11_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	combout => \sine_gen_inst|Mux21~15_combout\);

-- Location: LCCOMB_X14_Y23_N0
\sine_gen_inst|Mux21~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux21~16_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & ((\sine_gen_inst|Mux21~15_combout\) # ((\sine_gen_inst|Mux0~2_combout\ & \sine_gen_inst|Mux21~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux0~2_combout\,
	datab => \sine_gen_inst|Mux21~13_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datad => \sine_gen_inst|Mux21~15_combout\,
	combout => \sine_gen_inst|Mux21~16_combout\);

-- Location: LCCOMB_X14_Y23_N6
\sine_gen_inst|Mux21~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux21~17_combout\ = (\sine_gen_inst|Mux21~9_combout\) # ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & ((\sine_gen_inst|Mux21~16_combout\) # (\sine_gen_inst|Mux21~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux21~9_combout\,
	datab => \sine_gen_inst|Mux21~16_combout\,
	datac => \sine_gen_inst|Mux21~14_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	combout => \sine_gen_inst|Mux21~17_combout\);

-- Location: LCCOMB_X17_Y19_N0
\sine_gen_inst|Mux22~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux22~0_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ $ (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ $ 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	combout => \sine_gen_inst|Mux22~0_combout\);

-- Location: LCCOMB_X17_Y19_N10
\sine_gen_inst|Mux22~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux22~1_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	combout => \sine_gen_inst|Mux22~1_combout\);

-- Location: LCCOMB_X17_Y19_N8
\sine_gen_inst|Mux22~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux22~2_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\))))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ $ (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	combout => \sine_gen_inst|Mux22~2_combout\);

-- Location: LCCOMB_X17_Y19_N6
\sine_gen_inst|Mux22~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux22~3_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & (!\sine_gen_inst|Mux22~2_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & (((\sine_gen_inst|Mux22~1_combout\) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datab => \sine_gen_inst|Mux22~2_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Mux22~1_combout\,
	combout => \sine_gen_inst|Mux22~3_combout\);

-- Location: LCCOMB_X17_Y19_N20
\sine_gen_inst|Mux22~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux22~4_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\))))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	combout => \sine_gen_inst|Mux22~4_combout\);

-- Location: LCCOMB_X17_Y19_N30
\sine_gen_inst|Mux22~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux22~5_combout\ = (\sine_gen_inst|Mux22~3_combout\ & ((\sine_gen_inst|Mux22~4_combout\) # ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\)))) # (!\sine_gen_inst|Mux22~3_combout\ & 
-- (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & !\sine_gen_inst|Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux22~3_combout\,
	datab => \sine_gen_inst|Mux22~4_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Mux22~0_combout\,
	combout => \sine_gen_inst|Mux22~5_combout\);

-- Location: LCCOMB_X17_Y23_N4
\sine_gen_inst|Mux22~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux22~6_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	combout => \sine_gen_inst|Mux22~6_combout\);

-- Location: LCCOMB_X17_Y19_N16
\sine_gen_inst|Mux22~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux22~7_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ $ (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\))))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	combout => \sine_gen_inst|Mux22~7_combout\);

-- Location: LCCOMB_X17_Y19_N18
\sine_gen_inst|Mux22~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux22~8_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ $ (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	combout => \sine_gen_inst|Mux22~8_combout\);

-- Location: LCCOMB_X17_Y19_N24
\sine_gen_inst|Mux22~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux22~9_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & !\sine_gen_inst|Mux22~8_combout\)))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\)) # (!\sine_gen_inst|Mux22~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010110110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Mux22~7_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Mux22~8_combout\,
	combout => \sine_gen_inst|Mux22~9_combout\);

-- Location: LCCOMB_X17_Y19_N22
\sine_gen_inst|Mux22~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux22~10_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ $ (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ $ 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\)) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	combout => \sine_gen_inst|Mux22~10_combout\);

-- Location: LCCOMB_X17_Y19_N12
\sine_gen_inst|Mux22~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux22~11_combout\ = (\sine_gen_inst|Mux22~9_combout\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\)) # (!\sine_gen_inst|Mux22~10_combout\))) # (!\sine_gen_inst|Mux22~9_combout\ & 
-- (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & \sine_gen_inst|Mux22~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux22~10_combout\,
	datab => \sine_gen_inst|Mux22~9_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Mux22~6_combout\,
	combout => \sine_gen_inst|Mux22~11_combout\);

-- Location: LCCOMB_X17_Y19_N2
\sine_gen_inst|Mux22~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux22~12_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & (\sine_gen_inst|Mux22~5_combout\ $ ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\)))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & \sine_gen_inst|Mux22~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux22~5_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	datad => \sine_gen_inst|Mux22~11_combout\,
	combout => \sine_gen_inst|Mux22~12_combout\);

-- Location: LCCOMB_X17_Y19_N28
\sine_gen_inst|Mux22~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux22~13_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ $ (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	combout => \sine_gen_inst|Mux22~13_combout\);

-- Location: LCCOMB_X17_Y19_N14
\sine_gen_inst|Mux22~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux22~14_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & (\sine_gen_inst|Mux22~8_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & (((\sine_gen_inst|Mux22~13_combout\) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Mux22~8_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Mux22~13_combout\,
	combout => \sine_gen_inst|Mux22~14_combout\);

-- Location: LCCOMB_X17_Y19_N4
\sine_gen_inst|Mux22~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux22~15_combout\ = (\sine_gen_inst|Mux22~14_combout\ & ((\sine_gen_inst|Mux22~10_combout\) # ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\)))) # (!\sine_gen_inst|Mux22~14_combout\ & 
-- (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & !\sine_gen_inst|Mux22~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux22~10_combout\,
	datab => \sine_gen_inst|Mux22~14_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Mux22~6_combout\,
	combout => \sine_gen_inst|Mux22~15_combout\);

-- Location: LCCOMB_X17_Y19_N26
\sine_gen_inst|Mux22~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux22~16_combout\ = (\sine_gen_inst|Mux22~12_combout\) # ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & (\sine_gen_inst|Mux22~15_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	datab => \sine_gen_inst|Mux22~15_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datad => \sine_gen_inst|Mux22~12_combout\,
	combout => \sine_gen_inst|Mux22~16_combout\);

-- Location: LCCOMB_X13_Y23_N18
\sine_gen_inst|Mux23~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux23~0_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	combout => \sine_gen_inst|Mux23~0_combout\);

-- Location: LCCOMB_X13_Y23_N0
\sine_gen_inst|Mux23~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux23~1_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\)))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	combout => \sine_gen_inst|Mux23~1_combout\);

-- Location: LCCOMB_X13_Y23_N10
\sine_gen_inst|Mux23~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux23~2_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\)) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\))))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	combout => \sine_gen_inst|Mux23~2_combout\);

-- Location: LCCOMB_X13_Y23_N8
\sine_gen_inst|Mux23~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux23~3_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & \sine_gen_inst|Mux23~2_combout\)))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & ((\sine_gen_inst|Mux23~1_combout\) # ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datab => \sine_gen_inst|Mux23~1_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datad => \sine_gen_inst|Mux23~2_combout\,
	combout => \sine_gen_inst|Mux23~3_combout\);

-- Location: LCCOMB_X12_Y23_N18
\sine_gen_inst|Mux23~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux23~4_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\))))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux23~4_combout\);

-- Location: LCCOMB_X13_Y23_N2
\sine_gen_inst|Mux23~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux23~5_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & (((\sine_gen_inst|Mux23~3_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & ((\sine_gen_inst|Mux23~3_combout\ & 
-- ((\sine_gen_inst|Mux23~4_combout\))) # (!\sine_gen_inst|Mux23~3_combout\ & (!\sine_gen_inst|Mux23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Mux23~0_combout\,
	datac => \sine_gen_inst|Mux23~3_combout\,
	datad => \sine_gen_inst|Mux23~4_combout\,
	combout => \sine_gen_inst|Mux23~5_combout\);

-- Location: LCCOMB_X13_Y23_N4
\sine_gen_inst|Mux23~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux23~8_combout\ = \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ $ (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & 
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	combout => \sine_gen_inst|Mux23~8_combout\);

-- Location: LCCOMB_X13_Y23_N14
\sine_gen_inst|Mux23~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux23~9_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & ((\sine_gen_inst|Mux23~8_combout\))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & (!\sine_gen_inst|Mux23~7_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & 
-- (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux23~7_combout\,
	datab => \sine_gen_inst|Mux23~8_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	combout => \sine_gen_inst|Mux23~9_combout\);

-- Location: LCCOMB_X13_Y23_N12
\sine_gen_inst|Mux23~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux23~11_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & (((\sine_gen_inst|Mux23~9_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & ((\sine_gen_inst|Mux23~9_combout\ & 
-- ((\sine_gen_inst|Mux23~10_combout\))) # (!\sine_gen_inst|Mux23~9_combout\ & (\sine_gen_inst|Mux23~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datab => \sine_gen_inst|Mux23~6_combout\,
	datac => \sine_gen_inst|Mux23~9_combout\,
	datad => \sine_gen_inst|Mux23~10_combout\,
	combout => \sine_gen_inst|Mux23~11_combout\);

-- Location: LCCOMB_X13_Y23_N6
\sine_gen_inst|Mux23~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux23~12_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & ((\sine_gen_inst|Mux23~5_combout\ $ (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\)))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & (\sine_gen_inst|Mux23~11_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux23~11_combout\,
	datab => \sine_gen_inst|Mux23~5_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	combout => \sine_gen_inst|Mux23~12_combout\);

-- Location: FF_X16_Y30_N11
\freq_div_inst|toggle_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \freq_div_inst|toggle_reg~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_div_inst|toggle_reg~q\);

-- Location: FF_X21_Y22_N5
\triangle_gen_inst|direction\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_div_inst|toggle_reg~clkctrl_outclk\,
	d => \triangle_gen_inst|direction~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \triangle_gen_inst|direction~q\);

-- Location: FF_X16_Y30_N7
\freq_div_inst|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \freq_div_inst|counter~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_div_inst|counter\(1));

-- Location: FF_X16_Y30_N27
\freq_div_inst|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \freq_div_inst|counter~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_div_inst|counter\(5));

-- Location: FF_X16_Y30_N13
\freq_div_inst|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \freq_div_inst|counter~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_div_inst|counter\(4));

-- Location: FF_X16_Y30_N21
\freq_div_inst|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \freq_div_inst|Add0~6_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_div_inst|counter\(3));

-- Location: FF_X16_Y30_N19
\freq_div_inst|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \freq_div_inst|Add0~4_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_div_inst|counter\(2));

-- Location: LCCOMB_X16_Y30_N28
\freq_div_inst|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \freq_div_inst|Equal0~0_combout\ = (\freq_div_inst|counter\(4) & (!\freq_div_inst|counter\(2) & (\freq_div_inst|counter\(5) & !\freq_div_inst|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_div_inst|counter\(4),
	datab => \freq_div_inst|counter\(2),
	datac => \freq_div_inst|counter\(5),
	datad => \freq_div_inst|counter\(3),
	combout => \freq_div_inst|Equal0~0_combout\);

-- Location: FF_X16_Y30_N15
\freq_div_inst|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \freq_div_inst|Add0~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_div_inst|counter\(0));

-- Location: LCCOMB_X16_Y30_N30
\freq_div_inst|toggle_reg~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \freq_div_inst|toggle_reg~0_combout\ = \freq_div_inst|toggle_reg~q\ $ (((!\freq_div_inst|counter\(1) & (\freq_div_inst|counter\(0) & \freq_div_inst|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_div_inst|counter\(1),
	datab => \freq_div_inst|counter\(0),
	datac => \freq_div_inst|toggle_reg~q\,
	datad => \freq_div_inst|Equal0~0_combout\,
	combout => \freq_div_inst|toggle_reg~0_combout\);

-- Location: LCCOMB_X21_Y22_N4
\triangle_gen_inst|direction~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \triangle_gen_inst|direction~0_combout\ = (\triangle_gen_inst|direction~q\ & (((\triangle_gen_inst|LessThan1~2_combout\)))) # (!\triangle_gen_inst|direction~q\ & (!\triangle_gen_inst|LessThan0~1_combout\ & (!\triangle_gen_inst|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \triangle_gen_inst|LessThan0~1_combout\,
	datab => \triangle_gen_inst|LessThan0~0_combout\,
	datac => \triangle_gen_inst|direction~q\,
	datad => \triangle_gen_inst|LessThan1~2_combout\,
	combout => \triangle_gen_inst|direction~0_combout\);

-- Location: LCCOMB_X16_Y30_N6
\freq_div_inst|counter~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \freq_div_inst|counter~0_combout\ = (\freq_div_inst|Add0~2_combout\ & (((\freq_div_inst|counter\(1)) # (!\freq_div_inst|Equal0~0_combout\)) # (!\freq_div_inst|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_div_inst|counter\(0),
	datab => \freq_div_inst|Equal0~0_combout\,
	datac => \freq_div_inst|counter\(1),
	datad => \freq_div_inst|Add0~2_combout\,
	combout => \freq_div_inst|counter~0_combout\);

-- Location: LCCOMB_X16_Y30_N26
\freq_div_inst|counter~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \freq_div_inst|counter~1_combout\ = (\freq_div_inst|Add0~10_combout\ & (((\freq_div_inst|counter\(1)) # (!\freq_div_inst|Equal0~0_combout\)) # (!\freq_div_inst|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_div_inst|counter\(0),
	datab => \freq_div_inst|Equal0~0_combout\,
	datac => \freq_div_inst|counter\(1),
	datad => \freq_div_inst|Add0~10_combout\,
	combout => \freq_div_inst|counter~1_combout\);

-- Location: LCCOMB_X16_Y30_N12
\freq_div_inst|counter~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \freq_div_inst|counter~2_combout\ = (\freq_div_inst|Add0~8_combout\ & (((\freq_div_inst|counter\(1)) # (!\freq_div_inst|Equal0~0_combout\)) # (!\freq_div_inst|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_div_inst|counter\(0),
	datab => \freq_div_inst|counter\(1),
	datac => \freq_div_inst|Add0~8_combout\,
	datad => \freq_div_inst|Equal0~0_combout\,
	combout => \freq_div_inst|counter~2_combout\);

-- Location: LCCOMB_X18_Y21_N26
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[270]~379\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[270]~379_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[253]~448_combout\) # 
-- ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[253]~448_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~24_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[270]~379_combout\);

-- Location: LCCOMB_X12_Y22_N12
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[266]~383\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[266]~383_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[249]~452_combout\) # 
-- ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[249]~452_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~16_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[266]~383_combout\);

-- Location: LCCOMB_X16_Y21_N30
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[265]~384\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[265]~384_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[248]~453_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~14_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~14_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[248]~453_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[265]~384_combout\);

-- Location: LCCOMB_X17_Y21_N26
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[260]~389\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[260]~389_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[243]~458_combout\) # 
-- ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[243]~458_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~4_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[260]~389_combout\);

-- Location: LCCOMB_X12_Y22_N2
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[283]~394\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[283]~394_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[266]~383_combout\) # 
-- ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[266]~383_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~16_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[283]~394_combout\);

-- Location: LCCOMB_X12_Y22_N20
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[300]~405\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[300]~405_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[283]~394_combout\) # 
-- ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[283]~394_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~18_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[300]~405_combout\);

-- Location: LCCOMB_X16_Y22_N12
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[297]~408\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[297]~408_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[280]~397_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~12_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~12_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[280]~397_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[297]~408_combout\);

-- Location: LCCOMB_X14_Y20_N20
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[295]~410\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[295]~410_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[278]~399_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~8_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~8_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[278]~399_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[295]~410_combout\);

-- Location: LCCOMB_X12_Y22_N18
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[317]~415\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[317]~415_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[300]~405_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~20_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~20_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[300]~405_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[317]~415_combout\);

-- Location: LCCOMB_X14_Y20_N10
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[312]~420\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[312]~420_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[295]~410_combout\) # 
-- ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~10_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[295]~410_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[312]~420_combout\);

-- Location: LCCOMB_X12_Y22_N0
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[308]~424\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[308]~424_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[291]~331_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~2_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~2_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[291]~331_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[308]~424_combout\);

-- Location: LCCOMB_X12_Y22_N6
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[334]~425\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[334]~425_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[317]~415_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~22_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[317]~415_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~22_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[334]~425_combout\);

-- Location: LCCOMB_X10_Y21_N8
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[333]~426\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[333]~426_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[316]~416_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~20_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~20_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[316]~416_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[333]~426_combout\);

-- Location: LCCOMB_X14_Y20_N4
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[329]~430\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[329]~430_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[312]~420_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~12_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~12_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[312]~420_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[329]~430_combout\);

-- Location: LCCOMB_X12_Y21_N4
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[328]~431\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[328]~431_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[311]~421_combout\) # 
-- ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[311]~421_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~10_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[328]~431_combout\);

-- Location: LCCOMB_X10_Y22_N12
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[325]~434\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[325]~434_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[308]~424_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~4_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~4_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[308]~424_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[325]~434_combout\);

-- Location: LCCOMB_X12_Y20_N10
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[324]~435\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[324]~435_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[307]~346_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~2_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~2_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[307]~346_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[324]~435_combout\);

-- Location: LCCOMB_X10_Y21_N16
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[350]~436\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[350]~436_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[333]~426_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~22_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~22_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[333]~426_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[350]~436_combout\);

-- Location: LCCOMB_X12_Y21_N2
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[349]~437\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[349]~437_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[332]~427_combout\) # 
-- ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[332]~427_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~20_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[349]~437_combout\);

-- Location: LCCOMB_X10_Y21_N26
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[347]~439\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[347]~439_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[330]~429_combout\) # 
-- ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[330]~429_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~16_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[347]~439_combout\);

-- Location: LCCOMB_X14_Y22_N14
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[346]~440\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[346]~440_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[329]~430_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~14_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~14_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[329]~430_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[346]~440_combout\);

-- Location: LCCOMB_X12_Y21_N30
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[345]~441\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[345]~441_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[328]~431_combout\) # 
-- ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[328]~431_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~12_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[345]~441_combout\);

-- Location: LCCOMB_X12_Y20_N20
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[341]~445\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[341]~445_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[324]~435_combout\) # 
-- ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[324]~435_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~4_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[341]~445_combout\);

-- Location: LCCOMB_X12_Y19_N14
\sine_gen_inst|Mux4~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux4~18_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\)) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	combout => \sine_gen_inst|Mux4~18_combout\);

-- Location: LCCOMB_X19_Y22_N26
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[250]~451\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[250]~451_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & 
-- ((\sine_gen_inst|counter\(9)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~16_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datad => \sine_gen_inst|counter\(9),
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[250]~451_combout\);

-- Location: LCCOMB_X19_Y22_N2
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[248]~453\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[248]~453_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & 
-- (\sine_gen_inst|counter\(7))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datab => \sine_gen_inst|counter\(7),
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~12_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[248]~453_combout\);

-- Location: LCCOMB_X14_Y23_N8
\sine_gen_inst|Mux11~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux11~17_combout\ = \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ $ (((\sine_gen_inst|Mux11~19_combout\) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|Mux11~19_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux11~17_combout\);

-- Location: LCCOMB_X14_Y20_N6
\sine_gen_inst|Mux11~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux11~18_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	combout => \sine_gen_inst|Mux11~18_combout\);

-- Location: LCCOMB_X14_Y23_N2
\sine_gen_inst|Mux11~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux11~19_combout\ = (\sine_gen_inst|Mux11~18_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ $ (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datac => \sine_gen_inst|Mux11~18_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	combout => \sine_gen_inst|Mux11~19_combout\);

-- Location: IOIBUF_X16_Y0_N15
\clk_50mhz~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_50mhz,
	o => \clk_50mhz~input_o\);

-- Location: CLKCTRL_G17
\clk_50mhz~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_50mhz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_50mhz~inputclkctrl_outclk\);

-- Location: CLKCTRL_G14
\freq_div_inst|toggle_reg~clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \freq_div_inst|toggle_reg~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \freq_div_inst|toggle_reg~clkctrl_outclk\);

-- Location: LCCOMB_X16_Y30_N10
\freq_div_inst|toggle_reg~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \freq_div_inst|toggle_reg~feeder_combout\ = \freq_div_inst|toggle_reg~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freq_div_inst|toggle_reg~0_combout\,
	combout => \freq_div_inst|toggle_reg~feeder_combout\);

-- Location: IOOBUF_X12_Y31_N2
\sa1_pwm~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_a_inst|LessThan0~14_combout\,
	devoe => ww_devoe,
	o => \sa1_pwm~output_o\);

-- Location: IOOBUF_X12_Y31_N9
\sa2_pwm~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_a_inst|ALT_INV_LessThan0~14_combout\,
	devoe => ww_devoe,
	o => \sa2_pwm~output_o\);

-- Location: IOOBUF_X14_Y31_N2
\sb1_pwm~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_b_inst|LessThan0~14_combout\,
	devoe => ww_devoe,
	o => \sb1_pwm~output_o\);

-- Location: IOOBUF_X14_Y31_N9
\sb2_pwm~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_b_inst|ALT_INV_LessThan0~14_combout\,
	devoe => ww_devoe,
	o => \sb2_pwm~output_o\);

-- Location: IOOBUF_X20_Y31_N2
\sc1_pwm~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_c_inst|LessThan0~14_combout\,
	devoe => ww_devoe,
	o => \sc1_pwm~output_o\);

-- Location: IOOBUF_X10_Y31_N2
\sc2_pwm~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_c_inst|ALT_INV_LessThan0~14_combout\,
	devoe => ww_devoe,
	o => \sc2_pwm~output_o\);

-- Location: LCCOMB_X21_Y22_N10
\triangle_gen_inst|current_value[0]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \triangle_gen_inst|current_value[0]~9_combout\ = \triangle_gen_inst|current_value\(0) $ (VCC)
-- \triangle_gen_inst|current_value[0]~10\ = CARRY(\triangle_gen_inst|current_value\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \triangle_gen_inst|current_value\(0),
	datad => VCC,
	combout => \triangle_gen_inst|current_value[0]~9_combout\,
	cout => \triangle_gen_inst|current_value[0]~10\);

-- Location: LCCOMB_X21_Y22_N12
\triangle_gen_inst|current_value[1]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \triangle_gen_inst|current_value[1]~11_combout\ = (\triangle_gen_inst|current_value\(1) & ((\triangle_gen_inst|current_value[7]~8_combout\ & (!\triangle_gen_inst|current_value[0]~10\)) # (!\triangle_gen_inst|current_value[7]~8_combout\ & 
-- (\triangle_gen_inst|current_value[0]~10\ & VCC)))) # (!\triangle_gen_inst|current_value\(1) & ((\triangle_gen_inst|current_value[7]~8_combout\ & ((\triangle_gen_inst|current_value[0]~10\) # (GND))) # (!\triangle_gen_inst|current_value[7]~8_combout\ & 
-- (!\triangle_gen_inst|current_value[0]~10\))))
-- \triangle_gen_inst|current_value[1]~12\ = CARRY((\triangle_gen_inst|current_value\(1) & (\triangle_gen_inst|current_value[7]~8_combout\ & !\triangle_gen_inst|current_value[0]~10\)) # (!\triangle_gen_inst|current_value\(1) & 
-- ((\triangle_gen_inst|current_value[7]~8_combout\) # (!\triangle_gen_inst|current_value[0]~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangle_gen_inst|current_value\(1),
	datab => \triangle_gen_inst|current_value[7]~8_combout\,
	datad => VCC,
	cin => \triangle_gen_inst|current_value[0]~10\,
	combout => \triangle_gen_inst|current_value[1]~11_combout\,
	cout => \triangle_gen_inst|current_value[1]~12\);

-- Location: LCCOMB_X21_Y22_N14
\triangle_gen_inst|current_value[2]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \triangle_gen_inst|current_value[2]~13_combout\ = ((\triangle_gen_inst|current_value\(2) $ (\triangle_gen_inst|current_value[7]~8_combout\ $ (\triangle_gen_inst|current_value[1]~12\)))) # (GND)
-- \triangle_gen_inst|current_value[2]~14\ = CARRY((\triangle_gen_inst|current_value\(2) & ((!\triangle_gen_inst|current_value[1]~12\) # (!\triangle_gen_inst|current_value[7]~8_combout\))) # (!\triangle_gen_inst|current_value\(2) & 
-- (!\triangle_gen_inst|current_value[7]~8_combout\ & !\triangle_gen_inst|current_value[1]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangle_gen_inst|current_value\(2),
	datab => \triangle_gen_inst|current_value[7]~8_combout\,
	datad => VCC,
	cin => \triangle_gen_inst|current_value[1]~12\,
	combout => \triangle_gen_inst|current_value[2]~13_combout\,
	cout => \triangle_gen_inst|current_value[2]~14\);

-- Location: IOIBUF_X16_Y0_N22
\rst_n~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n,
	o => \rst_n~input_o\);

-- Location: CLKCTRL_G19
\rst_n~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst_n~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst_n~inputclkctrl_outclk\);

-- Location: FF_X21_Y22_N15
\triangle_gen_inst|current_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_div_inst|toggle_reg~clkctrl_outclk\,
	d => \triangle_gen_inst|current_value[2]~13_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \triangle_gen_inst|current_value\(2));

-- Location: FF_X21_Y22_N13
\triangle_gen_inst|current_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_div_inst|toggle_reg~clkctrl_outclk\,
	d => \triangle_gen_inst|current_value[1]~11_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \triangle_gen_inst|current_value\(1));

-- Location: LCCOMB_X21_Y22_N0
\triangle_gen_inst|LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \triangle_gen_inst|LessThan0~0_combout\ = (((!\triangle_gen_inst|current_value\(1)) # (!\triangle_gen_inst|current_value\(2))) # (!\triangle_gen_inst|current_value\(7))) # (!\triangle_gen_inst|current_value\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \triangle_gen_inst|current_value\(0),
	datab => \triangle_gen_inst|current_value\(7),
	datac => \triangle_gen_inst|current_value\(2),
	datad => \triangle_gen_inst|current_value\(1),
	combout => \triangle_gen_inst|LessThan0~0_combout\);

-- Location: LCCOMB_X21_Y22_N16
\triangle_gen_inst|current_value[3]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \triangle_gen_inst|current_value[3]~15_combout\ = (\triangle_gen_inst|current_value\(3) & ((\triangle_gen_inst|current_value[7]~8_combout\ & (!\triangle_gen_inst|current_value[2]~14\)) # (!\triangle_gen_inst|current_value[7]~8_combout\ & 
-- (\triangle_gen_inst|current_value[2]~14\ & VCC)))) # (!\triangle_gen_inst|current_value\(3) & ((\triangle_gen_inst|current_value[7]~8_combout\ & ((\triangle_gen_inst|current_value[2]~14\) # (GND))) # (!\triangle_gen_inst|current_value[7]~8_combout\ & 
-- (!\triangle_gen_inst|current_value[2]~14\))))
-- \triangle_gen_inst|current_value[3]~16\ = CARRY((\triangle_gen_inst|current_value\(3) & (\triangle_gen_inst|current_value[7]~8_combout\ & !\triangle_gen_inst|current_value[2]~14\)) # (!\triangle_gen_inst|current_value\(3) & 
-- ((\triangle_gen_inst|current_value[7]~8_combout\) # (!\triangle_gen_inst|current_value[2]~14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangle_gen_inst|current_value\(3),
	datab => \triangle_gen_inst|current_value[7]~8_combout\,
	datad => VCC,
	cin => \triangle_gen_inst|current_value[2]~14\,
	combout => \triangle_gen_inst|current_value[3]~15_combout\,
	cout => \triangle_gen_inst|current_value[3]~16\);

-- Location: LCCOMB_X21_Y22_N18
\triangle_gen_inst|current_value[4]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \triangle_gen_inst|current_value[4]~17_combout\ = ((\triangle_gen_inst|current_value\(4) $ (\triangle_gen_inst|current_value[7]~8_combout\ $ (\triangle_gen_inst|current_value[3]~16\)))) # (GND)
-- \triangle_gen_inst|current_value[4]~18\ = CARRY((\triangle_gen_inst|current_value\(4) & ((!\triangle_gen_inst|current_value[3]~16\) # (!\triangle_gen_inst|current_value[7]~8_combout\))) # (!\triangle_gen_inst|current_value\(4) & 
-- (!\triangle_gen_inst|current_value[7]~8_combout\ & !\triangle_gen_inst|current_value[3]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangle_gen_inst|current_value\(4),
	datab => \triangle_gen_inst|current_value[7]~8_combout\,
	datad => VCC,
	cin => \triangle_gen_inst|current_value[3]~16\,
	combout => \triangle_gen_inst|current_value[4]~17_combout\,
	cout => \triangle_gen_inst|current_value[4]~18\);

-- Location: FF_X21_Y22_N19
\triangle_gen_inst|current_value[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_div_inst|toggle_reg~clkctrl_outclk\,
	d => \triangle_gen_inst|current_value[4]~17_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \triangle_gen_inst|current_value\(4));

-- Location: LCCOMB_X21_Y22_N20
\triangle_gen_inst|current_value[5]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \triangle_gen_inst|current_value[5]~19_combout\ = (\triangle_gen_inst|current_value\(5) & ((\triangle_gen_inst|current_value[7]~8_combout\ & (!\triangle_gen_inst|current_value[4]~18\)) # (!\triangle_gen_inst|current_value[7]~8_combout\ & 
-- (\triangle_gen_inst|current_value[4]~18\ & VCC)))) # (!\triangle_gen_inst|current_value\(5) & ((\triangle_gen_inst|current_value[7]~8_combout\ & ((\triangle_gen_inst|current_value[4]~18\) # (GND))) # (!\triangle_gen_inst|current_value[7]~8_combout\ & 
-- (!\triangle_gen_inst|current_value[4]~18\))))
-- \triangle_gen_inst|current_value[5]~20\ = CARRY((\triangle_gen_inst|current_value\(5) & (\triangle_gen_inst|current_value[7]~8_combout\ & !\triangle_gen_inst|current_value[4]~18\)) # (!\triangle_gen_inst|current_value\(5) & 
-- ((\triangle_gen_inst|current_value[7]~8_combout\) # (!\triangle_gen_inst|current_value[4]~18\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangle_gen_inst|current_value\(5),
	datab => \triangle_gen_inst|current_value[7]~8_combout\,
	datad => VCC,
	cin => \triangle_gen_inst|current_value[4]~18\,
	combout => \triangle_gen_inst|current_value[5]~19_combout\,
	cout => \triangle_gen_inst|current_value[5]~20\);

-- Location: FF_X21_Y22_N21
\triangle_gen_inst|current_value[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_div_inst|toggle_reg~clkctrl_outclk\,
	d => \triangle_gen_inst|current_value[5]~19_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \triangle_gen_inst|current_value\(5));

-- Location: FF_X21_Y22_N17
\triangle_gen_inst|current_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_div_inst|toggle_reg~clkctrl_outclk\,
	d => \triangle_gen_inst|current_value[3]~15_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \triangle_gen_inst|current_value\(3));

-- Location: LCCOMB_X21_Y22_N26
\triangle_gen_inst|LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \triangle_gen_inst|LessThan0~1_combout\ = (((!\triangle_gen_inst|current_value\(3)) # (!\triangle_gen_inst|current_value\(5))) # (!\triangle_gen_inst|current_value\(4))) # (!\triangle_gen_inst|current_value\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \triangle_gen_inst|current_value\(6),
	datab => \triangle_gen_inst|current_value\(4),
	datac => \triangle_gen_inst|current_value\(5),
	datad => \triangle_gen_inst|current_value\(3),
	combout => \triangle_gen_inst|LessThan0~1_combout\);

-- Location: FF_X21_Y22_N11
\triangle_gen_inst|current_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_div_inst|toggle_reg~clkctrl_outclk\,
	d => \triangle_gen_inst|current_value[0]~9_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \triangle_gen_inst|current_value\(0));

-- Location: LCCOMB_X21_Y22_N8
\triangle_gen_inst|LessThan1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \triangle_gen_inst|LessThan1~1_combout\ = (\triangle_gen_inst|current_value\(7)) # (\triangle_gen_inst|current_value\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \triangle_gen_inst|current_value\(7),
	datad => \triangle_gen_inst|current_value\(0),
	combout => \triangle_gen_inst|LessThan1~1_combout\);

-- Location: LCCOMB_X21_Y22_N6
\triangle_gen_inst|LessThan1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \triangle_gen_inst|LessThan1~0_combout\ = (\triangle_gen_inst|current_value\(6)) # ((\triangle_gen_inst|current_value\(4)) # ((\triangle_gen_inst|current_value\(3)) # (\triangle_gen_inst|current_value\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \triangle_gen_inst|current_value\(6),
	datab => \triangle_gen_inst|current_value\(4),
	datac => \triangle_gen_inst|current_value\(3),
	datad => \triangle_gen_inst|current_value\(5),
	combout => \triangle_gen_inst|LessThan1~0_combout\);

-- Location: LCCOMB_X21_Y22_N2
\triangle_gen_inst|LessThan1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \triangle_gen_inst|LessThan1~2_combout\ = (\triangle_gen_inst|current_value\(1)) # ((\triangle_gen_inst|current_value\(2)) # ((\triangle_gen_inst|LessThan1~1_combout\) # (\triangle_gen_inst|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \triangle_gen_inst|current_value\(1),
	datab => \triangle_gen_inst|current_value\(2),
	datac => \triangle_gen_inst|LessThan1~1_combout\,
	datad => \triangle_gen_inst|LessThan1~0_combout\,
	combout => \triangle_gen_inst|LessThan1~2_combout\);

-- Location: LCCOMB_X21_Y22_N28
\triangle_gen_inst|current_value[7]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \triangle_gen_inst|current_value[7]~8_combout\ = (\triangle_gen_inst|direction~q\ & (((!\triangle_gen_inst|LessThan1~2_combout\)))) # (!\triangle_gen_inst|direction~q\ & ((\triangle_gen_inst|LessThan0~0_combout\) # 
-- ((\triangle_gen_inst|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \triangle_gen_inst|direction~q\,
	datab => \triangle_gen_inst|LessThan0~0_combout\,
	datac => \triangle_gen_inst|LessThan0~1_combout\,
	datad => \triangle_gen_inst|LessThan1~2_combout\,
	combout => \triangle_gen_inst|current_value[7]~8_combout\);

-- Location: LCCOMB_X21_Y22_N22
\triangle_gen_inst|current_value[6]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \triangle_gen_inst|current_value[6]~21_combout\ = ((\triangle_gen_inst|current_value\(6) $ (\triangle_gen_inst|current_value[7]~8_combout\ $ (\triangle_gen_inst|current_value[5]~20\)))) # (GND)
-- \triangle_gen_inst|current_value[6]~22\ = CARRY((\triangle_gen_inst|current_value\(6) & ((!\triangle_gen_inst|current_value[5]~20\) # (!\triangle_gen_inst|current_value[7]~8_combout\))) # (!\triangle_gen_inst|current_value\(6) & 
-- (!\triangle_gen_inst|current_value[7]~8_combout\ & !\triangle_gen_inst|current_value[5]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangle_gen_inst|current_value\(6),
	datab => \triangle_gen_inst|current_value[7]~8_combout\,
	datad => VCC,
	cin => \triangle_gen_inst|current_value[5]~20\,
	combout => \triangle_gen_inst|current_value[6]~21_combout\,
	cout => \triangle_gen_inst|current_value[6]~22\);

-- Location: LCCOMB_X21_Y22_N24
\triangle_gen_inst|current_value[7]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \triangle_gen_inst|current_value[7]~23_combout\ = \triangle_gen_inst|current_value\(7) $ (\triangle_gen_inst|current_value[6]~22\ $ (!\triangle_gen_inst|current_value[7]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangle_gen_inst|current_value\(7),
	datad => \triangle_gen_inst|current_value[7]~8_combout\,
	cin => \triangle_gen_inst|current_value[6]~22\,
	combout => \triangle_gen_inst|current_value[7]~23_combout\);

-- Location: FF_X21_Y22_N25
\triangle_gen_inst|current_value[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_div_inst|toggle_reg~clkctrl_outclk\,
	d => \triangle_gen_inst|current_value[7]~23_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \triangle_gen_inst|current_value\(7));

-- Location: LCCOMB_X20_Y22_N16
\sine_gen_inst|Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Add0~14_combout\ = (\sine_gen_inst|counter\(8) & (!\sine_gen_inst|Add0~13\)) # (!\sine_gen_inst|counter\(8) & ((\sine_gen_inst|Add0~13\) # (GND)))
-- \sine_gen_inst|Add0~15\ = CARRY((!\sine_gen_inst|Add0~13\) # (!\sine_gen_inst|counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|counter\(8),
	datad => VCC,
	cin => \sine_gen_inst|Add0~13\,
	combout => \sine_gen_inst|Add0~14_combout\,
	cout => \sine_gen_inst|Add0~15\);

-- Location: LCCOMB_X19_Y22_N16
\sine_gen_inst|counter~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|counter~1_combout\ = (\sine_gen_inst|Add0~14_combout\ & (((!\sine_gen_inst|Equal0~1_combout\) # (!\sine_gen_inst|Equal0~0_combout\)) # (!\sine_gen_inst|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Equal0~3_combout\,
	datab => \sine_gen_inst|Equal0~0_combout\,
	datac => \sine_gen_inst|Equal0~1_combout\,
	datad => \sine_gen_inst|Add0~14_combout\,
	combout => \sine_gen_inst|counter~1_combout\);

-- Location: FF_X19_Y22_N17
\sine_gen_inst|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_div_inst|toggle_reg~clkctrl_outclk\,
	d => \sine_gen_inst|counter~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sine_gen_inst|counter\(8));

-- Location: LCCOMB_X19_Y22_N14
\sine_gen_inst|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Equal0~1_combout\ = (!\sine_gen_inst|counter\(10) & (\sine_gen_inst|counter\(8) & (!\sine_gen_inst|counter\(7) & !\sine_gen_inst|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|counter\(10),
	datab => \sine_gen_inst|counter\(8),
	datac => \sine_gen_inst|counter\(7),
	datad => \sine_gen_inst|counter\(9),
	combout => \sine_gen_inst|Equal0~1_combout\);

-- Location: LCCOMB_X20_Y22_N2
\sine_gen_inst|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Add0~0_combout\ = (\sine_gen_inst|counter\(1) & (\triangle_gen_inst|current_value\(0) $ (VCC))) # (!\sine_gen_inst|counter\(1) & (\triangle_gen_inst|current_value\(0) & VCC))
-- \sine_gen_inst|Add0~1\ = CARRY((\sine_gen_inst|counter\(1) & \triangle_gen_inst|current_value\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|counter\(1),
	datab => \triangle_gen_inst|current_value\(0),
	datad => VCC,
	combout => \sine_gen_inst|Add0~0_combout\,
	cout => \sine_gen_inst|Add0~1\);

-- Location: LCCOMB_X20_Y22_N4
\sine_gen_inst|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Add0~2_combout\ = (\sine_gen_inst|counter\(2) & (!\sine_gen_inst|Add0~1\)) # (!\sine_gen_inst|counter\(2) & ((\sine_gen_inst|Add0~1\) # (GND)))
-- \sine_gen_inst|Add0~3\ = CARRY((!\sine_gen_inst|Add0~1\) # (!\sine_gen_inst|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|counter\(2),
	datad => VCC,
	cin => \sine_gen_inst|Add0~1\,
	combout => \sine_gen_inst|Add0~2_combout\,
	cout => \sine_gen_inst|Add0~3\);

-- Location: FF_X20_Y22_N5
\sine_gen_inst|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_div_inst|toggle_reg~clkctrl_outclk\,
	d => \sine_gen_inst|Add0~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sine_gen_inst|counter\(2));

-- Location: LCCOMB_X20_Y22_N6
\sine_gen_inst|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Add0~4_combout\ = (\sine_gen_inst|counter\(3) & (\sine_gen_inst|Add0~3\ $ (GND))) # (!\sine_gen_inst|counter\(3) & (!\sine_gen_inst|Add0~3\ & VCC))
-- \sine_gen_inst|Add0~5\ = CARRY((\sine_gen_inst|counter\(3) & !\sine_gen_inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|counter\(3),
	datad => VCC,
	cin => \sine_gen_inst|Add0~3\,
	combout => \sine_gen_inst|Add0~4_combout\,
	cout => \sine_gen_inst|Add0~5\);

-- Location: LCCOMB_X20_Y22_N8
\sine_gen_inst|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Add0~6_combout\ = (\sine_gen_inst|counter\(4) & (!\sine_gen_inst|Add0~5\)) # (!\sine_gen_inst|counter\(4) & ((\sine_gen_inst|Add0~5\) # (GND)))
-- \sine_gen_inst|Add0~7\ = CARRY((!\sine_gen_inst|Add0~5\) # (!\sine_gen_inst|counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|counter\(4),
	datad => VCC,
	cin => \sine_gen_inst|Add0~5\,
	combout => \sine_gen_inst|Add0~6_combout\,
	cout => \sine_gen_inst|Add0~7\);

-- Location: LCCOMB_X19_Y22_N6
\sine_gen_inst|counter~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|counter~2_combout\ = (\sine_gen_inst|Add0~6_combout\ & (((!\sine_gen_inst|Equal0~0_combout\) # (!\sine_gen_inst|Equal0~1_combout\)) # (!\sine_gen_inst|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Equal0~3_combout\,
	datab => \sine_gen_inst|Equal0~1_combout\,
	datac => \sine_gen_inst|Add0~6_combout\,
	datad => \sine_gen_inst|Equal0~0_combout\,
	combout => \sine_gen_inst|counter~2_combout\);

-- Location: FF_X19_Y22_N7
\sine_gen_inst|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_div_inst|toggle_reg~clkctrl_outclk\,
	d => \sine_gen_inst|counter~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sine_gen_inst|counter\(4));

-- Location: LCCOMB_X20_Y22_N10
\sine_gen_inst|Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Add0~8_combout\ = (\sine_gen_inst|counter\(5) & (\sine_gen_inst|Add0~7\ $ (GND))) # (!\sine_gen_inst|counter\(5) & (!\sine_gen_inst|Add0~7\ & VCC))
-- \sine_gen_inst|Add0~9\ = CARRY((\sine_gen_inst|counter\(5) & !\sine_gen_inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|counter\(5),
	datad => VCC,
	cin => \sine_gen_inst|Add0~7\,
	combout => \sine_gen_inst|Add0~8_combout\,
	cout => \sine_gen_inst|Add0~9\);

-- Location: LCCOMB_X20_Y22_N12
\sine_gen_inst|Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Add0~10_combout\ = (\sine_gen_inst|counter\(6) & (!\sine_gen_inst|Add0~9\)) # (!\sine_gen_inst|counter\(6) & ((\sine_gen_inst|Add0~9\) # (GND)))
-- \sine_gen_inst|Add0~11\ = CARRY((!\sine_gen_inst|Add0~9\) # (!\sine_gen_inst|counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|counter\(6),
	datad => VCC,
	cin => \sine_gen_inst|Add0~9\,
	combout => \sine_gen_inst|Add0~10_combout\,
	cout => \sine_gen_inst|Add0~11\);

-- Location: LCCOMB_X20_Y22_N14
\sine_gen_inst|Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Add0~12_combout\ = (\sine_gen_inst|counter\(7) & (\sine_gen_inst|Add0~11\ $ (GND))) # (!\sine_gen_inst|counter\(7) & (!\sine_gen_inst|Add0~11\ & VCC))
-- \sine_gen_inst|Add0~13\ = CARRY((\sine_gen_inst|counter\(7) & !\sine_gen_inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|counter\(7),
	datad => VCC,
	cin => \sine_gen_inst|Add0~11\,
	combout => \sine_gen_inst|Add0~12_combout\,
	cout => \sine_gen_inst|Add0~13\);

-- Location: FF_X20_Y22_N15
\sine_gen_inst|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_div_inst|toggle_reg~clkctrl_outclk\,
	d => \sine_gen_inst|Add0~12_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sine_gen_inst|counter\(7));

-- Location: LCCOMB_X20_Y22_N18
\sine_gen_inst|Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Add0~16_combout\ = (\sine_gen_inst|counter\(9) & (\sine_gen_inst|Add0~15\ $ (GND))) # (!\sine_gen_inst|counter\(9) & (!\sine_gen_inst|Add0~15\ & VCC))
-- \sine_gen_inst|Add0~17\ = CARRY((\sine_gen_inst|counter\(9) & !\sine_gen_inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|counter\(9),
	datad => VCC,
	cin => \sine_gen_inst|Add0~15\,
	combout => \sine_gen_inst|Add0~16_combout\,
	cout => \sine_gen_inst|Add0~17\);

-- Location: FF_X20_Y22_N19
\sine_gen_inst|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_div_inst|toggle_reg~clkctrl_outclk\,
	d => \sine_gen_inst|Add0~16_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sine_gen_inst|counter\(9));

-- Location: LCCOMB_X20_Y22_N20
\sine_gen_inst|Add0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Add0~18_combout\ = (\sine_gen_inst|counter\(10) & (!\sine_gen_inst|Add0~17\)) # (!\sine_gen_inst|counter\(10) & ((\sine_gen_inst|Add0~17\) # (GND)))
-- \sine_gen_inst|Add0~19\ = CARRY((!\sine_gen_inst|Add0~17\) # (!\sine_gen_inst|counter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|counter\(10),
	datad => VCC,
	cin => \sine_gen_inst|Add0~17\,
	combout => \sine_gen_inst|Add0~18_combout\,
	cout => \sine_gen_inst|Add0~19\);

-- Location: FF_X20_Y22_N21
\sine_gen_inst|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_div_inst|toggle_reg~clkctrl_outclk\,
	d => \sine_gen_inst|Add0~18_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sine_gen_inst|counter\(10));

-- Location: LCCOMB_X20_Y22_N22
\sine_gen_inst|Add0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Add0~20_combout\ = (\sine_gen_inst|counter\(11) & (\sine_gen_inst|Add0~19\ $ (GND))) # (!\sine_gen_inst|counter\(11) & (!\sine_gen_inst|Add0~19\ & VCC))
-- \sine_gen_inst|Add0~21\ = CARRY((\sine_gen_inst|counter\(11) & !\sine_gen_inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|counter\(11),
	datad => VCC,
	cin => \sine_gen_inst|Add0~19\,
	combout => \sine_gen_inst|Add0~20_combout\,
	cout => \sine_gen_inst|Add0~21\);

-- Location: LCCOMB_X20_Y22_N24
\sine_gen_inst|Add0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Add0~22_combout\ = (\sine_gen_inst|counter\(12) & (!\sine_gen_inst|Add0~21\)) # (!\sine_gen_inst|counter\(12) & ((\sine_gen_inst|Add0~21\) # (GND)))
-- \sine_gen_inst|Add0~23\ = CARRY((!\sine_gen_inst|Add0~21\) # (!\sine_gen_inst|counter\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|counter\(12),
	datad => VCC,
	cin => \sine_gen_inst|Add0~21\,
	combout => \sine_gen_inst|Add0~22_combout\,
	cout => \sine_gen_inst|Add0~23\);

-- Location: FF_X20_Y22_N25
\sine_gen_inst|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_div_inst|toggle_reg~clkctrl_outclk\,
	d => \sine_gen_inst|Add0~22_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sine_gen_inst|counter\(12));

-- Location: LCCOMB_X20_Y22_N26
\sine_gen_inst|Add0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Add0~24_combout\ = (\sine_gen_inst|counter\(13) & (\sine_gen_inst|Add0~23\ $ (GND))) # (!\sine_gen_inst|counter\(13) & (!\sine_gen_inst|Add0~23\ & VCC))
-- \sine_gen_inst|Add0~25\ = CARRY((\sine_gen_inst|counter\(13) & !\sine_gen_inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|counter\(13),
	datad => VCC,
	cin => \sine_gen_inst|Add0~23\,
	combout => \sine_gen_inst|Add0~24_combout\,
	cout => \sine_gen_inst|Add0~25\);

-- Location: FF_X20_Y22_N27
\sine_gen_inst|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_div_inst|toggle_reg~clkctrl_outclk\,
	d => \sine_gen_inst|Add0~24_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sine_gen_inst|counter\(13));

-- Location: FF_X20_Y22_N23
\sine_gen_inst|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_div_inst|toggle_reg~clkctrl_outclk\,
	d => \sine_gen_inst|Add0~20_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sine_gen_inst|counter\(11));

-- Location: LCCOMB_X19_Y22_N24
\sine_gen_inst|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Equal0~0_combout\ = (!\sine_gen_inst|counter\(12) & (!\sine_gen_inst|counter\(13) & (\sine_gen_inst|counter\(14) & !\sine_gen_inst|counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|counter\(12),
	datab => \sine_gen_inst|counter\(13),
	datac => \sine_gen_inst|counter\(14),
	datad => \sine_gen_inst|counter\(11),
	combout => \sine_gen_inst|Equal0~0_combout\);

-- Location: LCCOMB_X20_Y22_N30
\sine_gen_inst|counter~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|counter~4_combout\ = (\sine_gen_inst|Add0~0_combout\ & (((!\sine_gen_inst|Equal0~0_combout\) # (!\sine_gen_inst|Equal0~3_combout\)) # (!\sine_gen_inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Equal0~1_combout\,
	datab => \sine_gen_inst|Add0~0_combout\,
	datac => \sine_gen_inst|Equal0~3_combout\,
	datad => \sine_gen_inst|Equal0~0_combout\,
	combout => \sine_gen_inst|counter~4_combout\);

-- Location: FF_X20_Y22_N31
\sine_gen_inst|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_div_inst|toggle_reg~clkctrl_outclk\,
	d => \sine_gen_inst|counter~4_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sine_gen_inst|counter\(1));

-- Location: FF_X20_Y22_N13
\sine_gen_inst|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_div_inst|toggle_reg~clkctrl_outclk\,
	d => \sine_gen_inst|Add0~10_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sine_gen_inst|counter\(6));

-- Location: FF_X20_Y22_N11
\sine_gen_inst|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_div_inst|toggle_reg~clkctrl_outclk\,
	d => \sine_gen_inst|Add0~8_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sine_gen_inst|counter\(5));

-- Location: LCCOMB_X19_Y22_N20
\sine_gen_inst|Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Equal0~2_combout\ = (\sine_gen_inst|counter\(3) & (!\sine_gen_inst|counter\(6) & (!\sine_gen_inst|counter\(5) & \sine_gen_inst|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|counter\(3),
	datab => \sine_gen_inst|counter\(6),
	datac => \sine_gen_inst|counter\(5),
	datad => \sine_gen_inst|counter\(4),
	combout => \sine_gen_inst|Equal0~2_combout\);

-- Location: LCCOMB_X19_Y22_N18
\sine_gen_inst|Equal0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Equal0~3_combout\ = (!\sine_gen_inst|counter\(2) & (\triangle_gen_inst|current_value\(0) & (!\sine_gen_inst|counter\(1) & \sine_gen_inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|counter\(2),
	datab => \triangle_gen_inst|current_value\(0),
	datac => \sine_gen_inst|counter\(1),
	datad => \sine_gen_inst|Equal0~2_combout\,
	combout => \sine_gen_inst|Equal0~3_combout\);

-- Location: LCCOMB_X20_Y22_N28
\sine_gen_inst|Add0~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Add0~26_combout\ = \sine_gen_inst|Add0~25\ $ (\sine_gen_inst|counter\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \sine_gen_inst|counter\(14),
	cin => \sine_gen_inst|Add0~25\,
	combout => \sine_gen_inst|Add0~26_combout\);

-- Location: LCCOMB_X20_Y22_N0
\sine_gen_inst|counter~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|counter~0_combout\ = (\sine_gen_inst|Add0~26_combout\ & (((!\sine_gen_inst|Equal0~3_combout\) # (!\sine_gen_inst|Equal0~0_combout\)) # (!\sine_gen_inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Equal0~1_combout\,
	datab => \sine_gen_inst|Equal0~0_combout\,
	datac => \sine_gen_inst|Equal0~3_combout\,
	datad => \sine_gen_inst|Add0~26_combout\,
	combout => \sine_gen_inst|counter~0_combout\);

-- Location: FF_X20_Y22_N1
\sine_gen_inst|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_div_inst|toggle_reg~clkctrl_outclk\,
	d => \sine_gen_inst|counter~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sine_gen_inst|counter\(14));

-- Location: LCCOMB_X19_Y23_N2
\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\ = \sine_gen_inst|counter\(1) $ (VCC)
-- \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\ = CARRY(\sine_gen_inst|counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|counter\(1),
	datad => VCC,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\);

-- Location: LCCOMB_X19_Y23_N4
\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\ = (\sine_gen_inst|counter\(2) & (\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\ & VCC)) # (!\sine_gen_inst|counter\(2) & 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ = CARRY((!\sine_gen_inst|counter\(2) & !\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|counter\(2),
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\);

-- Location: LCCOMB_X19_Y23_N8
\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\ = (\sine_gen_inst|counter\(4) & (!\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\)) # (!\sine_gen_inst|counter\(4) & 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\) # (GND)))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~7\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\) # (!\sine_gen_inst|counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|counter\(4),
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~7\);

-- Location: LCCOMB_X19_Y23_N10
\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\ = (\sine_gen_inst|counter\(5) & ((GND) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~7\))) # (!\sine_gen_inst|counter\(5) & 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~7\ $ (GND)))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~9\ = CARRY((\sine_gen_inst|counter\(5)) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|counter\(5),
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~7\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~9\);

-- Location: LCCOMB_X19_Y23_N12
\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ = (\sine_gen_inst|counter\(6) & (\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~9\ & VCC)) # (!\sine_gen_inst|counter\(6) & 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~9\))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~11\ = CARRY((!\sine_gen_inst|counter\(6) & !\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|counter\(6),
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~9\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~11\);

-- Location: LCCOMB_X19_Y23_N16
\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\ = (\sine_gen_inst|counter\(8) & (!\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~13\)) # (!\sine_gen_inst|counter\(8) & 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~13\) # (GND)))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~15\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~13\) # (!\sine_gen_inst|counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|counter\(8),
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~13\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~15\);

-- Location: LCCOMB_X19_Y23_N18
\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~16_combout\ = (\sine_gen_inst|counter\(9) & ((GND) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~15\))) # (!\sine_gen_inst|counter\(9) & 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~15\ $ (GND)))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~17\ = CARRY((\sine_gen_inst|counter\(9)) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|counter\(9),
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~15\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~16_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~17\);

-- Location: LCCOMB_X19_Y23_N20
\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[10]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[10]~18_combout\ = (\sine_gen_inst|counter\(10) & (\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~17\ & VCC)) # (!\sine_gen_inst|counter\(10) & 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~17\))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[10]~19\ = CARRY((!\sine_gen_inst|counter\(10) & !\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|counter\(10),
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~17\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[10]~18_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[10]~19\);

-- Location: LCCOMB_X19_Y23_N22
\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[11]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[11]~20_combout\ = (\sine_gen_inst|counter\(11) & ((GND) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[10]~19\))) # (!\sine_gen_inst|counter\(11) & 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[10]~19\ $ (GND)))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[11]~21\ = CARRY((\sine_gen_inst|counter\(11)) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[10]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|counter\(11),
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[10]~19\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[11]~20_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[11]~21\);

-- Location: LCCOMB_X19_Y23_N24
\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[12]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[12]~22_combout\ = (\sine_gen_inst|counter\(12) & (\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[11]~21\ & VCC)) # (!\sine_gen_inst|counter\(12) & 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[11]~21\))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[12]~23\ = CARRY((!\sine_gen_inst|counter\(12) & !\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[11]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|counter\(12),
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[11]~21\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[12]~22_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[12]~23\);

-- Location: LCCOMB_X19_Y23_N26
\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[13]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[13]~24_combout\ = (\sine_gen_inst|counter\(13) & ((GND) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[12]~23\))) # (!\sine_gen_inst|counter\(13) & 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[12]~23\ $ (GND)))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[13]~25\ = CARRY((\sine_gen_inst|counter\(13)) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[12]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|counter\(13),
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[12]~23\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[13]~24_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[13]~25\);

-- Location: LCCOMB_X19_Y23_N28
\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[14]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[14]~26_combout\ = (\sine_gen_inst|counter\(14) & (!\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[13]~25\)) # (!\sine_gen_inst|counter\(14) & 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[13]~25\) # (GND)))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[14]~27\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[13]~25\) # (!\sine_gen_inst|counter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|counter\(14),
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[13]~25\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[14]~26_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[14]~27\);

-- Location: LCCOMB_X19_Y23_N30
\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ = \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[14]~27\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[14]~27\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\);

-- Location: LCCOMB_X19_Y23_N0
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[238]~249\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[238]~249_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & 
-- \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[14]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[14]~26_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[238]~249_combout\);

-- Location: LCCOMB_X18_Y21_N18
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[237]~251\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[237]~251_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[13]~24_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[13]~24_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[237]~251_combout\);

-- Location: LCCOMB_X20_Y21_N22
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[236]~253\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[236]~253_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & 
-- \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[12]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[12]~22_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[236]~253_combout\);

-- Location: LCCOMB_X18_Y22_N8
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[235]~254\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[235]~254_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & \sine_gen_inst|counter\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datad => \sine_gen_inst|counter\(11),
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[235]~254_combout\);

-- Location: LCCOMB_X20_Y21_N16
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[234]~257\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[234]~257_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & 
-- \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[10]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[10]~18_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[234]~257_combout\);

-- Location: LCCOMB_X18_Y21_N24
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[233]~259\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[233]~259_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~16_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~16_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[233]~259_combout\);

-- Location: LCCOMB_X18_Y21_N22
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[232]~261\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[232]~261_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & 
-- \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[232]~261_combout\);

-- Location: LCCOMB_X20_Y23_N20
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[231]~262\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[231]~262_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & \sine_gen_inst|counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datad => \sine_gen_inst|counter\(7),
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[231]~262_combout\);

-- Location: LCCOMB_X20_Y21_N18
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[230]~264\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[230]~264_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & \sine_gen_inst|counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datad => \sine_gen_inst|counter\(6),
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[230]~264_combout\);

-- Location: LCCOMB_X20_Y21_N28
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[229]~266\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[229]~266_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & \sine_gen_inst|counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datad => \sine_gen_inst|counter\(5),
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[229]~266_combout\);

-- Location: LCCOMB_X20_Y21_N12
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[228]~268\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[228]~268_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & \sine_gen_inst|counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datac => \sine_gen_inst|counter\(4),
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[228]~268_combout\);

-- Location: LCCOMB_X19_Y22_N12
\sine_gen_inst|counter~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|counter~3_combout\ = (\sine_gen_inst|Add0~4_combout\ & (((!\sine_gen_inst|Equal0~1_combout\) # (!\sine_gen_inst|Equal0~0_combout\)) # (!\sine_gen_inst|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Equal0~3_combout\,
	datab => \sine_gen_inst|Equal0~0_combout\,
	datac => \sine_gen_inst|Equal0~1_combout\,
	datad => \sine_gen_inst|Add0~4_combout\,
	combout => \sine_gen_inst|counter~3_combout\);

-- Location: FF_X19_Y22_N13
\sine_gen_inst|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_div_inst|toggle_reg~clkctrl_outclk\,
	d => \sine_gen_inst|counter~3_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sine_gen_inst|counter\(3));

-- Location: LCCOMB_X18_Y21_N4
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[227]~270\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[227]~270_combout\ = (\sine_gen_inst|counter\(3) & \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|counter\(3),
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[227]~270_combout\);

-- Location: LCCOMB_X18_Y21_N28
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[226]~273\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[226]~273_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & 
-- \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[226]~273_combout\);

-- Location: LCCOMB_X14_Y21_N30
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[225]~275\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[225]~275_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & 
-- \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[225]~275_combout\);

-- Location: LCCOMB_X18_Y21_N6
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[224]~277\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[224]~277_combout\ = (\triangle_gen_inst|current_value\(0) & !\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \triangle_gen_inst|current_value\(0),
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[224]~277_combout\);

-- Location: LCCOMB_X19_Y21_N0
\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~0_combout\ = (((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[224]~276_combout\) # (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[224]~277_combout\)))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~1\ = CARRY((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[224]~276_combout\) # (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[224]~277_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[224]~276_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[224]~277_combout\,
	datad => VCC,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~0_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~1\);

-- Location: LCCOMB_X19_Y21_N2
\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~2_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~1\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[225]~274_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[225]~275_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~1\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[225]~274_combout\ & 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[225]~275_combout\)))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~3\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[225]~274_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[225]~275_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[225]~274_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[225]~275_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~1\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~2_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~3\);

-- Location: LCCOMB_X19_Y21_N6
\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~6_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[227]~271_combout\ & (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~5\)))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[227]~271_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[227]~270_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~5\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[227]~270_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~5\) # (GND)))))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~7\ = CARRY(((!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[227]~271_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[227]~270_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[227]~271_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[227]~270_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~5\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~6_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~7\);

-- Location: LCCOMB_X19_Y21_N12
\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~12_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~11\ & ((((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[230]~265_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[230]~264_combout\))))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~11\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[230]~265_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[230]~264_combout\) # (GND))))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~13\ = CARRY((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[230]~265_combout\) # ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[230]~264_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[230]~265_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[230]~264_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~11\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~12_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~13\);

-- Location: LCCOMB_X19_Y21_N14
\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~14_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[231]~263_combout\ & (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~13\)))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[231]~263_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[231]~262_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~13\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[231]~262_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~13\) # (GND)))))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~15\ = CARRY(((!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[231]~263_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[231]~262_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[231]~263_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[231]~262_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~13\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~14_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~15\);

-- Location: LCCOMB_X19_Y21_N18
\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~18_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~17\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[233]~258_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[233]~259_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~17\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[233]~258_combout\ & 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[233]~259_combout\)))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~19\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[233]~258_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[233]~259_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[233]~258_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[233]~259_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~17\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~18_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~19\);

-- Location: LCCOMB_X19_Y21_N20
\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~20_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~19\ & ((((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[234]~256_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[234]~257_combout\))))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~19\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[234]~256_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[234]~257_combout\) # (GND))))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~21\ = CARRY((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[234]~256_combout\) # ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[234]~257_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[234]~256_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[234]~257_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~19\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~20_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~21\);

-- Location: LCCOMB_X19_Y21_N22
\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~22_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~21\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[235]~255_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[235]~254_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~21\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[235]~255_combout\ & 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[235]~254_combout\)))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~23\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[235]~255_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[235]~254_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[235]~255_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[235]~254_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~21\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~22_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~23\);

-- Location: LCCOMB_X19_Y21_N28
\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~29_cout\ = CARRY((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[238]~248_combout\) # ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[238]~249_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[238]~248_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[238]~249_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~27\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~29_cout\);

-- Location: LCCOMB_X19_Y21_N30
\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ = !\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~29_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~29_cout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\);

-- Location: LCCOMB_X18_Y22_N14
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[254]~447\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[254]~447_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & 
-- ((\sine_gen_inst|counter\(13)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[13]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[13]~24_combout\,
	datac => \sine_gen_inst|counter\(13),
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[254]~447_combout\);

-- Location: LCCOMB_X18_Y21_N10
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[253]~448\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[253]~448_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & 
-- ((\sine_gen_inst|counter\(12)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[12]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[12]~22_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datad => \sine_gen_inst|counter\(12),
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[253]~448_combout\);

-- Location: LCCOMB_X18_Y22_N16
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[252]~449\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[252]~449_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & 
-- (\sine_gen_inst|counter\(11))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[11]~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datab => \sine_gen_inst|counter\(11),
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[11]~20_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[252]~449_combout\);

-- Location: LCCOMB_X19_Y22_N0
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[251]~450\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[251]~450_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & 
-- (\sine_gen_inst|counter\(10))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[10]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datac => \sine_gen_inst|counter\(10),
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[10]~18_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[251]~450_combout\);

-- Location: LCCOMB_X16_Y21_N16
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[250]~282\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[250]~282_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~18_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[250]~282_combout\);

-- Location: LCCOMB_X19_Y22_N28
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[249]~452\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[249]~452_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & 
-- ((\sine_gen_inst|counter\(8)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datad => \sine_gen_inst|counter\(8),
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[249]~452_combout\);

-- Location: LCCOMB_X16_Y21_N26
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[248]~284\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[248]~284_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~14_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[248]~284_combout\);

-- Location: LCCOMB_X18_Y22_N10
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[247]~454\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[247]~454_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & 
-- ((\sine_gen_inst|counter\(6)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	datad => \sine_gen_inst|counter\(6),
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[247]~454_combout\);

-- Location: LCCOMB_X20_Y21_N0
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[246]~455\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[246]~455_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & 
-- ((\sine_gen_inst|counter\(5)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\,
	datad => \sine_gen_inst|counter\(5),
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[246]~455_combout\);

-- Location: LCCOMB_X20_Y21_N10
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[245]~456\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[245]~456_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & 
-- (\sine_gen_inst|counter\(4))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datac => \sine_gen_inst|counter\(4),
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[245]~456_combout\);

-- Location: LCCOMB_X18_Y21_N8
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[244]~288\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[244]~288_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~6_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[244]~288_combout\);

-- Location: LCCOMB_X18_Y21_N2
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[243]~458\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[243]~458_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & 
-- (\sine_gen_inst|counter\(2))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|counter\(2),
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[243]~458_combout\);

-- Location: LCCOMB_X17_Y21_N4
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[242]~290\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[242]~290_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~2_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~2_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[242]~290_combout\);

-- Location: LCCOMB_X16_Y22_N18
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[241]~292\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[241]~292_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~0_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[241]~292_combout\);

-- Location: LCCOMB_X17_Y22_N0
\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~0_combout\ = (((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[241]~291_combout\) # (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[241]~292_combout\)))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~1\ = CARRY((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[241]~291_combout\) # (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[241]~292_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[241]~291_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[241]~292_combout\,
	datad => VCC,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~0_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~1\);

-- Location: LCCOMB_X17_Y22_N2
\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~2_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[242]~459_combout\ & (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~1\)))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[242]~459_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[242]~290_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~1\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[242]~290_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~1\) # (GND)))))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~3\ = CARRY(((!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[242]~459_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[242]~290_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[242]~459_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[242]~290_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~1\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~2_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~3\);

-- Location: LCCOMB_X17_Y22_N4
\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~4_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~3\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[243]~289_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[243]~458_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~3\ & ((((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[243]~289_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[243]~458_combout\)))))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~5\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~3\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[243]~289_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[243]~458_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[243]~289_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[243]~458_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~3\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~4_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~5\);

-- Location: LCCOMB_X17_Y22_N8
\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~8_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~7\ & ((((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[245]~287_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[245]~456_combout\))))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~7\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[245]~287_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[245]~456_combout\) # (GND))))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~9\ = CARRY((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[245]~287_combout\) # ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[245]~456_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[245]~287_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[245]~456_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~7\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~8_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~9\);

-- Location: LCCOMB_X17_Y22_N10
\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~10_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~9\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[246]~286_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[246]~455_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~9\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[246]~286_combout\ & 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[246]~455_combout\)))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~11\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[246]~286_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[246]~455_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[246]~286_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[246]~455_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~9\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~10_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~11\);

-- Location: LCCOMB_X17_Y22_N12
\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~12_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~11\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[247]~285_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[247]~454_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~11\ & ((((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[247]~285_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[247]~454_combout\)))))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~13\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~11\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[247]~285_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[247]~454_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[247]~285_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[247]~454_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~11\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~12_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~13\);

-- Location: LCCOMB_X17_Y22_N14
\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~14_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~13\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[248]~453_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[248]~284_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~13\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[248]~453_combout\ & 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[248]~284_combout\)))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~15\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[248]~453_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[248]~284_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[248]~453_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[248]~284_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~13\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~14_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~15\);

-- Location: LCCOMB_X17_Y22_N16
\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~16_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~15\ & ((((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[249]~283_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[249]~452_combout\))))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~15\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[249]~283_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[249]~452_combout\) # (GND))))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~17\ = CARRY((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[249]~283_combout\) # ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[249]~452_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[249]~283_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[249]~452_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~15\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~16_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~17\);

-- Location: LCCOMB_X17_Y22_N18
\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~18_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~17\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[250]~451_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[250]~282_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~17\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[250]~451_combout\ & 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[250]~282_combout\)))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~19\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[250]~451_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[250]~282_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[250]~451_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[250]~282_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~17\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~18_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~19\);

-- Location: LCCOMB_X17_Y22_N20
\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~20_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~19\ & ((((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[251]~281_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[251]~450_combout\))))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~19\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[251]~281_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[251]~450_combout\) # (GND))))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~21\ = CARRY((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[251]~281_combout\) # ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[251]~450_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[251]~281_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[251]~450_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~19\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~20_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~21\);

-- Location: LCCOMB_X17_Y22_N22
\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~22_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~21\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[252]~280_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[252]~449_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~21\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[252]~280_combout\ & 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[252]~449_combout\)))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~23\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[252]~280_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[252]~449_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[252]~280_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[252]~449_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~21\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~22_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~23\);

-- Location: LCCOMB_X17_Y22_N24
\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~24_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~23\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[253]~279_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[253]~448_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~23\ & ((((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[253]~279_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[253]~448_combout\)))))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~25\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~23\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[253]~279_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[253]~448_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[253]~279_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[253]~448_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~23\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~24_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~25\);

-- Location: LCCOMB_X17_Y22_N26
\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~27_cout\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[254]~278_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[254]~447_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[254]~278_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[254]~447_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~25\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~27_cout\);

-- Location: LCCOMB_X17_Y22_N28
\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ = \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~27_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~27_cout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\);

-- Location: LCCOMB_X16_Y22_N0
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[270]~293\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[270]~293_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~24_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[270]~293_combout\);

-- Location: LCCOMB_X18_Y22_N26
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[269]~380\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[269]~380_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[252]~449_combout\) # 
-- ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[252]~449_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~22_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[269]~380_combout\);

-- Location: LCCOMB_X16_Y22_N14
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[268]~295\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[268]~295_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~20_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~20_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[268]~295_combout\);

-- Location: LCCOMB_X16_Y22_N10
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[267]~382\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[267]~382_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[250]~451_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~18_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[250]~451_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~18_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[267]~382_combout\);

-- Location: LCCOMB_X12_Y22_N24
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[266]~297\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[266]~297_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~16_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[266]~297_combout\);

-- Location: LCCOMB_X16_Y21_N6
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[265]~298\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[265]~298_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~14_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[265]~298_combout\);

-- Location: LCCOMB_X18_Y22_N12
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[264]~299\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[264]~299_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~12_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[264]~299_combout\);

-- Location: LCCOMB_X16_Y22_N8
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[263]~386\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[263]~386_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[246]~455_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~10_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~10_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[246]~455_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[263]~386_combout\);

-- Location: LCCOMB_X16_Y21_N0
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[262]~301\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[262]~301_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~8_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~8_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[262]~301_combout\);

-- Location: LCCOMB_X18_Y21_N0
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[244]~457\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[244]~457_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & 
-- ((\sine_gen_inst|counter\(3)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\,
	datab => \sine_gen_inst|counter\(3),
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[244]~457_combout\);

-- Location: LCCOMB_X18_Y21_N20
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[261]~388\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[261]~388_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[244]~457_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~6_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~6_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[244]~457_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[261]~388_combout\);

-- Location: LCCOMB_X17_Y21_N0
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[260]~303\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[260]~303_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~4_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~4_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[260]~303_combout\);

-- Location: LCCOMB_X14_Y21_N20
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[242]~459\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[242]~459_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & 
-- (\sine_gen_inst|counter\(1))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datab => \sine_gen_inst|counter\(1),
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[242]~459_combout\);

-- Location: LCCOMB_X14_Y21_N22
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[259]~390\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[259]~390_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[242]~459_combout\) # 
-- ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[242]~459_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~2_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[259]~390_combout\);

-- Location: LCCOMB_X14_Y22_N6
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[258]~460\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[258]~460_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & 
-- (\triangle_gen_inst|current_value\(0))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	datac => \triangle_gen_inst|current_value\(0),
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~0_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[258]~460_combout\);

-- Location: LCCOMB_X15_Y22_N0
\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~1_cout\ = CARRY(!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	datad => VCC,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~1_cout\);

-- Location: LCCOMB_X15_Y22_N2
\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~2_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[258]~305_combout\ & (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~1_cout\)))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[258]~305_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[258]~460_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~1_cout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[258]~460_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~1_cout\) # (GND)))))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~3\ = CARRY(((!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[258]~305_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[258]~460_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[258]~305_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[258]~460_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~1_cout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~2_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~3\);

-- Location: LCCOMB_X15_Y22_N6
\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~6_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~5\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[260]~389_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[260]~303_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~5\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[260]~389_combout\ & 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[260]~303_combout\)))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~7\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[260]~389_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[260]~303_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[260]~389_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[260]~303_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~5\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~6_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~7\);

-- Location: LCCOMB_X15_Y22_N10
\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~10_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~9\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[262]~387_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[262]~301_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~9\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[262]~387_combout\ & 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[262]~301_combout\)))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~11\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[262]~387_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[262]~301_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[262]~387_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[262]~301_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~9\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~10_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~11\);

-- Location: LCCOMB_X15_Y22_N14
\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~14_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~13\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[264]~385_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[264]~299_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~13\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[264]~385_combout\ & 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[264]~299_combout\)))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~15\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[264]~385_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[264]~299_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[264]~385_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[264]~299_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~13\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~14_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~15\);

-- Location: LCCOMB_X15_Y22_N16
\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~16_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~15\ & ((((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[265]~384_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[265]~298_combout\))))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~15\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[265]~384_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[265]~298_combout\) # (GND))))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~17\ = CARRY((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[265]~384_combout\) # ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[265]~298_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[265]~384_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[265]~298_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~15\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~16_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~17\);

-- Location: LCCOMB_X15_Y22_N18
\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~18_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~17\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[266]~383_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[266]~297_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~17\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[266]~383_combout\ & 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[266]~297_combout\)))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~19\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[266]~383_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[266]~297_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[266]~383_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[266]~297_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~17\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~18_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~19\);

-- Location: LCCOMB_X15_Y22_N20
\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~20_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~19\ & ((((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[267]~296_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[267]~382_combout\))))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~19\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[267]~296_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[267]~382_combout\) # (GND))))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~21\ = CARRY((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[267]~296_combout\) # ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[267]~382_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[267]~296_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[267]~382_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~19\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~20_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~21\);

-- Location: LCCOMB_X15_Y22_N22
\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~22_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~21\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[268]~381_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[268]~295_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~21\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[268]~381_combout\ & 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[268]~295_combout\)))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~23\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[268]~381_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[268]~295_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[268]~381_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[268]~295_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~21\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~22_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~23\);

-- Location: LCCOMB_X15_Y22_N26
\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~27_cout\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[270]~379_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[270]~293_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[270]~379_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[270]~293_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~25\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~27_cout\);

-- Location: LCCOMB_X15_Y22_N28
\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ = \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~27_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~27_cout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\);

-- Location: LCCOMB_X16_Y20_N10
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[284]~393\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[284]~393_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[267]~382_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~18_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[267]~382_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~18_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[284]~393_combout\);

-- Location: LCCOMB_X16_Y20_N20
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[301]~404\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[301]~404_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[284]~393_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~20_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[284]~393_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~20_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[301]~404_combout\);

-- Location: LCCOMB_X16_Y20_N4
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[284]~308\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[284]~308_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~20_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~20_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[284]~308_combout\);

-- Location: LCCOMB_X15_Y21_N0
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[283]~309\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[283]~309_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~18_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[283]~309_combout\);

-- Location: LCCOMB_X16_Y21_N10
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[282]~310\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[282]~310_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~16_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[282]~310_combout\);

-- Location: LCCOMB_X12_Y20_N0
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[281]~311\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[281]~311_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~14_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[281]~311_combout\);

-- Location: LCCOMB_X16_Y22_N4
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[280]~397\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[280]~397_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[263]~386_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~10_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[263]~386_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~10_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[280]~397_combout\);

-- Location: LCCOMB_X16_Y21_N28
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[279]~313\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[279]~313_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~10_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[279]~313_combout\);

-- Location: LCCOMB_X14_Y20_N22
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[278]~399\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[278]~399_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[261]~388_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~6_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~6_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[261]~388_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[278]~399_combout\);

-- Location: LCCOMB_X16_Y21_N14
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[277]~315\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[277]~315_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~6_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[277]~315_combout\);

-- Location: LCCOMB_X14_Y21_N24
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[276]~401\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[276]~401_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[259]~390_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~2_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[259]~390_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~2_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[276]~401_combout\);

-- Location: LCCOMB_X14_Y22_N22
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[275]~402\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[275]~402_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[258]~460_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~0_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[258]~460_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~0_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[275]~402_combout\);

-- Location: LCCOMB_X16_Y22_N30
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[274]~318\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[274]~318_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[274]~318_combout\);

-- Location: LCCOMB_X15_Y21_N2
\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~1_cout\ = CARRY(!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datad => VCC,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~1_cout\);

-- Location: LCCOMB_X15_Y21_N4
\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~2_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[274]~319_combout\ & (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~1_cout\)))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[274]~319_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[274]~318_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~1_cout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[274]~318_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~1_cout\) # (GND)))))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~3\ = CARRY(((!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[274]~319_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[274]~318_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[274]~319_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[274]~318_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~1_cout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~2_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~3\);

-- Location: LCCOMB_X15_Y21_N6
\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~4_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~3\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[275]~317_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[275]~402_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~3\ & ((((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[275]~317_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[275]~402_combout\)))))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~5\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~3\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[275]~317_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[275]~402_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[275]~317_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[275]~402_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~3\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~4_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~5\);

-- Location: LCCOMB_X15_Y21_N8
\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~6_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~5\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[276]~316_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[276]~401_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~5\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[276]~316_combout\ & 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[276]~401_combout\)))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~7\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[276]~316_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[276]~401_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[276]~316_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[276]~401_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~5\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~6_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~7\);

-- Location: LCCOMB_X15_Y21_N10
\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~8_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~7\ & ((((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[277]~400_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[277]~315_combout\))))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~7\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[277]~400_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[277]~315_combout\) # (GND))))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~9\ = CARRY((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[277]~400_combout\) # ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[277]~315_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[277]~400_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[277]~315_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~7\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~8_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~9\);

-- Location: LCCOMB_X15_Y21_N12
\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~10_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~9\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[278]~314_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[278]~399_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~9\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[278]~314_combout\ & 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[278]~399_combout\)))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~11\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[278]~314_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[278]~399_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[278]~314_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[278]~399_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~9\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~10_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~11\);

-- Location: LCCOMB_X15_Y21_N14
\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~12_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~11\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[279]~398_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[279]~313_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~11\ & ((((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[279]~398_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[279]~313_combout\)))))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~13\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~11\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[279]~398_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[279]~313_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[279]~398_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[279]~313_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~11\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~12_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~13\);

-- Location: LCCOMB_X15_Y21_N16
\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~14_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~13\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[280]~312_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[280]~397_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~13\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[280]~312_combout\ & 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[280]~397_combout\)))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~15\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[280]~312_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[280]~397_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[280]~312_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[280]~397_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~13\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~14_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~15\);

-- Location: LCCOMB_X15_Y21_N18
\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~16_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~15\ & ((((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[281]~396_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[281]~311_combout\))))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~15\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[281]~396_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[281]~311_combout\) # (GND))))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~17\ = CARRY((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[281]~396_combout\) # ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[281]~311_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[281]~396_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[281]~311_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~15\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~16_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~17\);

-- Location: LCCOMB_X15_Y21_N22
\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~20_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~19\ & ((((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[283]~394_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[283]~309_combout\))))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~19\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[283]~394_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[283]~309_combout\) # (GND))))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~21\ = CARRY((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[283]~394_combout\) # ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[283]~309_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[283]~394_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[283]~309_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~19\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~20_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~21\);

-- Location: LCCOMB_X15_Y21_N24
\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~22_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~21\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[284]~393_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[284]~308_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~21\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[284]~393_combout\ & 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[284]~308_combout\)))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~23\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[284]~393_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[284]~308_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[284]~393_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[284]~308_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~21\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~22_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~23\);

-- Location: LCCOMB_X18_Y22_N30
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[286]~391\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[286]~391_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[269]~380_combout\) # 
-- ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[269]~380_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~22_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[286]~391_combout\);

-- Location: LCCOMB_X16_Y22_N20
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[268]~381\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[268]~381_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[251]~450_combout\) # 
-- ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[251]~450_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~20_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[268]~381_combout\);

-- Location: LCCOMB_X16_Y22_N26
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[285]~392\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[285]~392_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[268]~381_combout\) # 
-- ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[268]~381_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~20_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[285]~392_combout\);

-- Location: LCCOMB_X15_Y21_N28
\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~27_cout\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[286]~306_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[286]~391_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[286]~306_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[286]~391_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~25\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~27_cout\);

-- Location: LCCOMB_X15_Y21_N30
\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ = \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~27_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~27_cout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\);

-- Location: LCCOMB_X16_Y20_N14
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[318]~414\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[318]~414_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[301]~404_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~22_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[301]~404_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~22_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[318]~414_combout\);

-- Location: LCCOMB_X16_Y22_N22
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[302]~403\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[302]~403_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[285]~392_combout\) # 
-- ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[285]~392_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~22_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[302]~403_combout\);

-- Location: LCCOMB_X16_Y20_N26
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[301]~321\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[301]~321_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~22_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~22_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[301]~321_combout\);

-- Location: LCCOMB_X12_Y22_N30
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[300]~322\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[300]~322_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~20_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[300]~322_combout\);

-- Location: LCCOMB_X16_Y21_N2
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[282]~395\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[282]~395_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[265]~384_combout\) # 
-- ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[265]~384_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~14_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[282]~395_combout\);

-- Location: LCCOMB_X16_Y21_N22
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[299]~406\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[299]~406_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[282]~395_combout\) # 
-- ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~16_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[282]~395_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[299]~406_combout\);

-- Location: LCCOMB_X12_Y20_N30
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[298]~324\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[298]~324_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~16_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[298]~324_combout\);

-- Location: LCCOMB_X12_Y21_N24
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[297]~325\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[297]~325_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~14_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[297]~325_combout\);

-- Location: LCCOMB_X14_Y20_N12
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[296]~326\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[296]~326_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~12_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[296]~326_combout\);

-- Location: LCCOMB_X14_Y20_N26
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[295]~327\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[295]~327_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~10_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~10_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[295]~327_combout\);

-- Location: LCCOMB_X13_Y20_N0
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[294]~328\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[294]~328_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~8_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[294]~328_combout\);

-- Location: LCCOMB_X14_Y21_N26
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[293]~412\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[293]~412_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[276]~401_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~4_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~4_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[276]~401_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[293]~412_combout\);

-- Location: LCCOMB_X14_Y22_N12
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[292]~330\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[292]~330_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~4_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~4_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[292]~330_combout\);

-- Location: LCCOMB_X12_Y20_N4
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[291]~332\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[291]~332_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~2_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[291]~332_combout\);

-- Location: LCCOMB_X14_Y20_N16
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[290]~333\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[290]~333_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[290]~333_combout\);

-- Location: LCCOMB_X13_Y20_N2
\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~1_cout\ = CARRY(!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datad => VCC,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~1_cout\);

-- Location: LCCOMB_X13_Y20_N8
\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~6_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~5\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[292]~413_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[292]~330_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~5\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[292]~413_combout\ & 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[292]~330_combout\)))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~7\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[292]~413_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[292]~330_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[292]~413_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[292]~330_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~5\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~6_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~7\);

-- Location: LCCOMB_X13_Y20_N14
\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~12_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~11\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[295]~410_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[295]~327_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~11\ & ((((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[295]~410_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[295]~327_combout\)))))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~13\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~11\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[295]~410_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[295]~327_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[295]~410_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[295]~327_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~11\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~12_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~13\);

-- Location: LCCOMB_X13_Y20_N16
\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~14_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~13\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[296]~409_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[296]~326_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~13\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[296]~409_combout\ & 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[296]~326_combout\)))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~15\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[296]~409_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[296]~326_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[296]~409_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[296]~326_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~13\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~14_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~15\);

-- Location: LCCOMB_X13_Y20_N18
\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~16_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~15\ & ((((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[297]~408_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[297]~325_combout\))))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~15\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[297]~408_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[297]~325_combout\) # (GND))))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~17\ = CARRY((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[297]~408_combout\) # ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[297]~325_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[297]~408_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[297]~325_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~15\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~16_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~17\);

-- Location: LCCOMB_X13_Y20_N24
\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~22_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~21\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[300]~405_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[300]~322_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~21\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[300]~405_combout\ & 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[300]~322_combout\)))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~23\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[300]~405_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[300]~322_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[300]~405_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[300]~322_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~21\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~22_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~23\);

-- Location: LCCOMB_X13_Y20_N28
\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~27_cout\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[302]~320_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[302]~403_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[302]~320_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[302]~403_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~25\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~27_cout\);

-- Location: LCCOMB_X13_Y20_N30
\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ = \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~27_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~27_cout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\);

-- Location: LCCOMB_X12_Y22_N14
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[317]~336\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[317]~336_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~22_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[317]~336_combout\);

-- Location: LCCOMB_X10_Y21_N2
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[316]~416\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[316]~416_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[299]~406_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~18_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~18_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[299]~406_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[316]~416_combout\);

-- Location: LCCOMB_X18_Y22_N24
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[264]~385\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[264]~385_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[247]~454_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~12_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[247]~454_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~12_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[264]~385_combout\);

-- Location: LCCOMB_X18_Y22_N28
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[281]~396\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[281]~396_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[264]~385_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~12_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~12_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[264]~385_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[281]~396_combout\);

-- Location: LCCOMB_X12_Y20_N8
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[298]~407\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[298]~407_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[281]~396_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~14_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~14_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[281]~396_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[298]~407_combout\);

-- Location: LCCOMB_X12_Y20_N22
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[315]~417\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[315]~417_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[298]~407_combout\) # 
-- ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[298]~407_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~16_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[315]~417_combout\);

-- Location: LCCOMB_X12_Y21_N18
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[314]~418\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[314]~418_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[297]~408_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~14_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[297]~408_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~14_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[314]~418_combout\);

-- Location: LCCOMB_X16_Y21_N4
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[262]~387\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[262]~387_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[245]~456_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~8_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~8_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[245]~456_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[262]~387_combout\);

-- Location: LCCOMB_X16_Y21_N20
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[279]~398\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[279]~398_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[262]~387_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~8_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[262]~387_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~8_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[279]~398_combout\);

-- Location: LCCOMB_X16_Y21_N8
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[296]~409\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[296]~409_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[279]~398_combout\) # 
-- ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~10_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[279]~398_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[296]~409_combout\);

-- Location: LCCOMB_X13_Y21_N0
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[313]~419\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[313]~419_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[296]~409_combout\) # 
-- ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[296]~409_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~12_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[313]~419_combout\);

-- Location: LCCOMB_X15_Y20_N0
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[312]~341\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[312]~341_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~12_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[312]~341_combout\);

-- Location: LCCOMB_X17_Y21_N28
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[277]~400\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[277]~400_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[260]~389_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~4_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[260]~389_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~4_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[277]~400_combout\);

-- Location: LCCOMB_X16_Y21_N18
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[294]~411\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[294]~411_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[277]~400_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~6_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~6_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[277]~400_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[294]~411_combout\);

-- Location: LCCOMB_X12_Y21_N28
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[311]~421\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[311]~421_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[294]~411_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~8_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~8_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[294]~411_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[311]~421_combout\);

-- Location: LCCOMB_X14_Y21_N12
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[310]~422\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[310]~422_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[293]~412_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~6_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[293]~412_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~6_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[310]~422_combout\);

-- Location: LCCOMB_X14_Y22_N26
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[309]~344\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[309]~344_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~6_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[309]~344_combout\);

-- Location: LCCOMB_X10_Y22_N24
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[308]~345\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[308]~345_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~4_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~4_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[308]~345_combout\);

-- Location: LCCOMB_X12_Y20_N12
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[307]~346\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[307]~346_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ $ 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[307]~346_combout\);

-- Location: LCCOMB_X14_Y21_N16
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[306]~349\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[306]~349_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[306]~349_combout\);

-- Location: LCCOMB_X13_Y21_N2
\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~1_cout\ = CARRY(!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => VCC,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~1_cout\);

-- Location: LCCOMB_X13_Y21_N4
\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~2_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[306]~348_combout\ & (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~1_cout\)))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[306]~348_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[306]~349_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~1_cout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[306]~349_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~1_cout\) # (GND)))))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~3\ = CARRY(((!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[306]~348_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[306]~349_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[306]~348_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[306]~349_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~1_cout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~2_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~3\);

-- Location: LCCOMB_X13_Y21_N6
\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~4_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~3\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[307]~347_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[307]~346_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~3\ & ((((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[307]~347_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[307]~346_combout\)))))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~5\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~3\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[307]~347_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[307]~346_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[307]~347_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[307]~346_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~3\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~4_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~5\);

-- Location: LCCOMB_X13_Y21_N8
\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~6_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~5\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[308]~424_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[308]~345_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~5\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[308]~424_combout\ & 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[308]~345_combout\)))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~7\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[308]~424_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[308]~345_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[308]~424_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[308]~345_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~5\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~6_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~7\);

-- Location: LCCOMB_X13_Y21_N10
\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~8_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~7\ & ((((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[309]~423_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[309]~344_combout\))))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~7\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[309]~423_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[309]~344_combout\) # (GND))))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~9\ = CARRY((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[309]~423_combout\) # ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[309]~344_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[309]~423_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[309]~344_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~7\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~8_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~9\);

-- Location: LCCOMB_X13_Y21_N12
\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~10_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~9\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[310]~343_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[310]~422_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~9\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[310]~343_combout\ & 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[310]~422_combout\)))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~11\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[310]~343_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[310]~422_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[310]~343_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[310]~422_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~9\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~10_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~11\);

-- Location: LCCOMB_X13_Y21_N14
\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~12_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~11\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[311]~342_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[311]~421_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~11\ & ((((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[311]~342_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[311]~421_combout\)))))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~13\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~11\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[311]~342_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[311]~421_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[311]~342_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[311]~421_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~11\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~12_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~13\);

-- Location: LCCOMB_X13_Y21_N16
\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~14_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~13\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[312]~420_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[312]~341_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~13\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[312]~420_combout\ & 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[312]~341_combout\)))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~15\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[312]~420_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[312]~341_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[312]~420_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[312]~341_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~13\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~14_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~15\);

-- Location: LCCOMB_X13_Y21_N24
\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~22_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~21\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[316]~337_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[316]~416_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~21\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[316]~337_combout\ & 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[316]~416_combout\)))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~23\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[316]~337_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[316]~416_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[316]~337_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[316]~416_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~21\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~22_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~23\);

-- Location: LCCOMB_X13_Y21_N26
\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~24_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~23\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[317]~415_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[317]~336_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~23\ & ((((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[317]~415_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[317]~336_combout\)))))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~25\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~23\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[317]~415_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[317]~336_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[317]~415_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[317]~336_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~23\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~24_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~25\);

-- Location: LCCOMB_X13_Y21_N28
\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~27_cout\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[318]~335_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[318]~414_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[318]~335_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[318]~414_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~25\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~27_cout\);

-- Location: LCCOMB_X13_Y21_N30
\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ = \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~27_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~27_cout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\);

-- Location: LCCOMB_X12_Y21_N26
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[334]~350\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[334]~350_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~24_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[334]~350_combout\);

-- Location: LCCOMB_X10_Y21_N22
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[333]~351\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[333]~351_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~22_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~22_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[333]~351_combout\);

-- Location: LCCOMB_X12_Y20_N28
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[332]~427\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[332]~427_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[315]~417_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~18_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~18_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[315]~417_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[332]~427_combout\);

-- Location: LCCOMB_X12_Y21_N22
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[331]~353\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[331]~353_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~18_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~18_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[331]~353_combout\);

-- Location: LCCOMB_X10_Y21_N18
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[330]~429\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[330]~429_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[313]~419_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~14_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[313]~419_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~14_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[330]~429_combout\);

-- Location: LCCOMB_X12_Y22_N28
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[329]~355\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[329]~355_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~14_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[329]~355_combout\);

-- Location: LCCOMB_X12_Y21_N20
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[328]~356\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[328]~356_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~12_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[328]~356_combout\);

-- Location: LCCOMB_X14_Y21_N10
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[327]~432\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[327]~432_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[310]~422_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~8_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~8_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[310]~422_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[327]~432_combout\);

-- Location: LCCOMB_X14_Y22_N0
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[326]~358\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[326]~358_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~8_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[326]~358_combout\);

-- Location: LCCOMB_X10_Y22_N22
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[325]~359\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[325]~359_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~6_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~6_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[325]~359_combout\);

-- Location: LCCOMB_X12_Y22_N22
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[324]~360\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[324]~360_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~4_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~4_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[324]~360_combout\);

-- Location: LCCOMB_X16_Y20_N0
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[323]~361\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[323]~361_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ $ 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[323]~361_combout\);

-- Location: LCCOMB_X10_Y22_N18
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[322]~364\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[322]~364_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[322]~364_combout\);

-- Location: LCCOMB_X11_Y22_N0
\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~1_cout\ = CARRY(!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => VCC,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~1_cout\);

-- Location: LCCOMB_X11_Y22_N6
\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~6_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~5\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[324]~435_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[324]~360_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~5\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[324]~435_combout\ & 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[324]~360_combout\)))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~7\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[324]~435_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[324]~360_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[324]~435_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[324]~360_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~5\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~6_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~7\);

-- Location: LCCOMB_X11_Y22_N14
\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~14_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~13\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[328]~431_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[328]~356_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~13\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[328]~431_combout\ & 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[328]~356_combout\)))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~15\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[328]~431_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[328]~356_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[328]~431_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[328]~356_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~13\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~14_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~15\);

-- Location: LCCOMB_X11_Y22_N16
\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~16_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~15\ & ((((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[329]~430_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[329]~355_combout\))))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~15\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[329]~430_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[329]~355_combout\) # (GND))))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~17\ = CARRY((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[329]~430_combout\) # ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[329]~355_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[329]~430_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[329]~355_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~15\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~16_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~17\);

-- Location: LCCOMB_X11_Y22_N18
\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~18_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~17\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[330]~354_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[330]~429_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~17\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[330]~354_combout\ & 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[330]~429_combout\)))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~19\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[330]~354_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[330]~429_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[330]~354_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[330]~429_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~17\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~18_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~19\);

-- Location: LCCOMB_X11_Y22_N22
\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~22_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~21\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[332]~352_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[332]~427_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~21\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[332]~352_combout\ & 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[332]~427_combout\)))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~23\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[332]~352_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[332]~427_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[332]~352_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[332]~427_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~21\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~22_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~23\);

-- Location: LCCOMB_X11_Y22_N24
\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~24_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~23\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[333]~426_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[333]~351_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~23\ & ((((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[333]~426_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[333]~351_combout\)))))
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~25\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~23\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[333]~426_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[333]~351_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[333]~426_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[333]~351_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~23\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~24_combout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~25\);

-- Location: LCCOMB_X11_Y22_N26
\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~27_cout\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[334]~425_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[334]~350_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[334]~425_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[334]~350_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~25\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~27_cout\);

-- Location: LCCOMB_X11_Y22_N28
\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ = \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~27_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~27_cout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\);

-- Location: LCCOMB_X17_Y20_N22
\sine_gen_inst|Mux13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux13~0_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	combout => \sine_gen_inst|Mux13~0_combout\);

-- Location: LCCOMB_X10_Y21_N20
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[350]~365\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[350]~365_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~24_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[350]~365_combout\);

-- Location: LCCOMB_X11_Y21_N0
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[349]~366\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[349]~366_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~22_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[349]~366_combout\);

-- Location: LCCOMB_X12_Y21_N6
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[331]~428\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[331]~428_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[314]~418_combout\) # 
-- ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[314]~418_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~16_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[331]~428_combout\);

-- Location: LCCOMB_X12_Y21_N8
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[348]~438\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[348]~438_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[331]~428_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~18_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~18_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[331]~428_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[348]~438_combout\);

-- Location: LCCOMB_X10_Y21_N30
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[347]~368\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[347]~368_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~18_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[347]~368_combout\);

-- Location: LCCOMB_X11_Y21_N2
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[346]~369\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[346]~369_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~16_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[346]~369_combout\);

-- Location: LCCOMB_X12_Y22_N26
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[345]~370\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[345]~370_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~14_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[345]~370_combout\);

-- Location: LCCOMB_X10_Y21_N24
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[344]~442\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[344]~442_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[327]~432_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~10_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[327]~432_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~10_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[344]~442_combout\);

-- Location: LCCOMB_X14_Y22_N20
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[292]~413\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[292]~413_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[275]~402_combout\) # 
-- ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[275]~402_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~2_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[292]~413_combout\);

-- Location: LCCOMB_X14_Y22_N30
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[309]~423\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[309]~423_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[292]~413_combout\) # 
-- ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~4_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[292]~413_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[309]~423_combout\);

-- Location: LCCOMB_X14_Y22_N24
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[326]~433\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[326]~433_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[309]~423_combout\) # 
-- ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[309]~423_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~6_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[326]~433_combout\);

-- Location: LCCOMB_X14_Y22_N4
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[343]~443\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[343]~443_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[326]~433_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~8_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~8_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[326]~433_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[343]~443_combout\);

-- Location: LCCOMB_X10_Y22_N30
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[342]~444\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[342]~444_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[325]~434_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~6_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[325]~434_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~6_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[342]~444_combout\);

-- Location: LCCOMB_X12_Y24_N28
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[341]~374\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[341]~374_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~6_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~6_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[341]~374_combout\);

-- Location: LCCOMB_X10_Y22_N20
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[340]~446\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[340]~446_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[323]~361_combout\) # 
-- ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[323]~361_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~2_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[340]~446_combout\);

-- Location: LCCOMB_X12_Y21_N14
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[339]~376\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[339]~376_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ $ 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[339]~376_combout\);

-- Location: LCCOMB_X12_Y21_N12
\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[338]~378\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[338]~378_combout\ = \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ $ (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[338]~378_combout\);

-- Location: LCCOMB_X11_Y21_N4
\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~1_cout\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[338]~378_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[338]~378_combout\,
	datad => VCC,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~1_cout\);

-- Location: LCCOMB_X11_Y21_N6
\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~3_cout\ = CARRY(((!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[339]~377_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[339]~376_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[339]~377_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[339]~376_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~1_cout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~3_cout\);

-- Location: LCCOMB_X11_Y21_N8
\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~5_cout\ = CARRY((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[340]~375_combout\) # ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[340]~446_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[340]~375_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[340]~446_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~3_cout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~5_cout\);

-- Location: LCCOMB_X11_Y21_N10
\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~7_cout\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[341]~445_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[341]~374_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[341]~445_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[341]~374_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~5_cout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~7_cout\);

-- Location: LCCOMB_X11_Y21_N12
\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~9_cout\ = CARRY((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[342]~373_combout\) # ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[342]~444_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[342]~373_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[342]~444_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~7_cout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~9_cout\);

-- Location: LCCOMB_X11_Y21_N14
\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~11_cout\ = CARRY(((!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[343]~372_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[343]~443_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~9_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[343]~372_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[343]~443_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~9_cout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~11_cout\);

-- Location: LCCOMB_X11_Y21_N16
\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~13_cout\ = CARRY((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[344]~371_combout\) # ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[344]~442_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[344]~371_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[344]~442_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~11_cout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~13_cout\);

-- Location: LCCOMB_X11_Y21_N18
\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~15_cout\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[345]~441_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[345]~370_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[345]~441_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[345]~370_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~13_cout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~15_cout\);

-- Location: LCCOMB_X11_Y21_N20
\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~17_cout\ = CARRY((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[346]~440_combout\) # ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[346]~369_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[346]~440_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[346]~369_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~15_cout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~17_cout\);

-- Location: LCCOMB_X11_Y21_N22
\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~19_cout\ = CARRY((!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[347]~439_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[347]~368_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[347]~439_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[347]~368_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~17_cout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~19_cout\);

-- Location: LCCOMB_X11_Y21_N24
\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~21_cout\ = CARRY((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[348]~367_combout\) # ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[348]~438_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[348]~367_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[348]~438_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~19_cout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~21_cout\);

-- Location: LCCOMB_X11_Y21_N26
\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~23_cout\ = CARRY(((!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[349]~437_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[349]~366_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~21_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[349]~437_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[349]~366_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~21_cout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~23_cout\);

-- Location: LCCOMB_X11_Y21_N28
\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~25_cout\ = CARRY((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[350]~436_combout\) # ((\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[350]~365_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[350]~436_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[350]~365_combout\,
	datad => VCC,
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~23_cout\,
	cout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~25_cout\);

-- Location: LCCOMB_X11_Y21_N30
\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ = !\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~25_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~25_cout\,
	combout => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\);

-- Location: LCCOMB_X17_Y20_N6
\sine_gen_inst|Mux0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux0~4_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & (\sine_gen_inst|Mux13~0_combout\ & 
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datac => \sine_gen_inst|Mux13~0_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	combout => \sine_gen_inst|Mux0~4_combout\);

-- Location: LCCOMB_X15_Y23_N28
\sine_gen_inst|Mux0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux0~3_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\) # ((\sine_gen_inst|Mux0~4_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datac => \sine_gen_inst|Mux0~4_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	combout => \sine_gen_inst|Mux0~3_combout\);

-- Location: LCCOMB_X12_Y23_N28
\sine_gen_inst|Mux8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux8~0_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	combout => \sine_gen_inst|Mux8~0_combout\);

-- Location: LCCOMB_X12_Y23_N14
\sine_gen_inst|Mux8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux8~1_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & ((\sine_gen_inst|Mux8~0_combout\) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|Mux8~0_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux8~1_combout\);

-- Location: LCCOMB_X12_Y23_N0
\sine_gen_inst|Mux1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux1~2_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & (!\sine_gen_inst|Mux1~1_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & (((\sine_gen_inst|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux1~1_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datac => \sine_gen_inst|Mux8~1_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	combout => \sine_gen_inst|Mux1~2_combout\);

-- Location: LCCOMB_X12_Y23_N26
\sine_gen_inst|Mux1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux1~3_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & (\sine_gen_inst|Mux16~1_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & ((!\sine_gen_inst|Mux1~2_combout\))))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & (((\sine_gen_inst|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux16~1_combout\,
	datab => \sine_gen_inst|Mux1~2_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	combout => \sine_gen_inst|Mux1~3_combout\);

-- Location: LCCOMB_X12_Y23_N4
\sine_gen_inst|Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux1~0_combout\ = ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	combout => \sine_gen_inst|Mux1~0_combout\);

-- Location: LCCOMB_X12_Y23_N30
\sine_gen_inst|Mux2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux2~2_combout\ = (\sine_gen_inst|Mux2~1_combout\) # ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\) # (!\sine_gen_inst|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux2~1_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datac => \sine_gen_inst|Mux1~0_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux2~2_combout\);

-- Location: LCCOMB_X13_Y22_N20
\sine_gen_inst|Mux2~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux2~7_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & \sine_gen_inst|Mux2~2_combout\)))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & (\sine_gen_inst|Mux2~6_combout\ $ ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux2~6_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	datad => \sine_gen_inst|Mux2~2_combout\,
	combout => \sine_gen_inst|Mux2~7_combout\);

-- Location: LCCOMB_X13_Y19_N2
\sine_gen_inst|Mux2~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux2~9_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\) # (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	combout => \sine_gen_inst|Mux2~9_combout\);

-- Location: LCCOMB_X13_Y19_N8
\sine_gen_inst|Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux2~0_combout\ = (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\)) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)) 
-- # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	combout => \sine_gen_inst|Mux2~0_combout\);

-- Location: LCCOMB_X17_Y20_N8
\sine_gen_inst|Mux0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux0~2_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux0~2_combout\);

-- Location: LCCOMB_X13_Y19_N16
\sine_gen_inst|Mux2~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux2~10_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[290]~333_combout\ & (((\sine_gen_inst|Mux2~9_combout\ & \sine_gen_inst|Mux0~2_combout\)) # (!\sine_gen_inst|Mux2~0_combout\))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[290]~333_combout\ & (\sine_gen_inst|Mux2~9_combout\ & ((\sine_gen_inst|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[290]~333_combout\,
	datab => \sine_gen_inst|Mux2~9_combout\,
	datac => \sine_gen_inst|Mux2~0_combout\,
	datad => \sine_gen_inst|Mux0~2_combout\,
	combout => \sine_gen_inst|Mux2~10_combout\);

-- Location: LCCOMB_X15_Y19_N28
\sine_gen_inst|Mux10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux10~0_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	combout => \sine_gen_inst|Mux10~0_combout\);

-- Location: LCCOMB_X13_Y22_N16
\sine_gen_inst|Mux2~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux2~11_combout\ = (\sine_gen_inst|Mux2~7_combout\) # ((\sine_gen_inst|Mux10~0_combout\ & ((\sine_gen_inst|Mux2~8_combout\) # (\sine_gen_inst|Mux2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux2~8_combout\,
	datab => \sine_gen_inst|Mux2~7_combout\,
	datac => \sine_gen_inst|Mux2~10_combout\,
	datad => \sine_gen_inst|Mux10~0_combout\,
	combout => \sine_gen_inst|Mux2~11_combout\);

-- Location: LCCOMB_X13_Y19_N20
\sine_gen_inst|Mux3~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux3~11_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\))))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	combout => \sine_gen_inst|Mux3~11_combout\);

-- Location: LCCOMB_X13_Y19_N26
\sine_gen_inst|Mux3~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux3~10_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	combout => \sine_gen_inst|Mux3~10_combout\);

-- Location: LCCOMB_X13_Y19_N6
\sine_gen_inst|Mux3~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux3~12_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[290]~333_combout\ & ((\sine_gen_inst|Mux3~10_combout\) # ((\sine_gen_inst|Mux3~11_combout\ & \sine_gen_inst|Mux0~2_combout\)))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[290]~333_combout\ & (\sine_gen_inst|Mux3~11_combout\ & ((\sine_gen_inst|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|StageOut[290]~333_combout\,
	datab => \sine_gen_inst|Mux3~11_combout\,
	datac => \sine_gen_inst|Mux3~10_combout\,
	datad => \sine_gen_inst|Mux0~2_combout\,
	combout => \sine_gen_inst|Mux3~12_combout\);

-- Location: LCCOMB_X12_Y24_N18
\sine_gen_inst|Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux3~0_combout\ = \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ $ (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	combout => \sine_gen_inst|Mux3~0_combout\);

-- Location: LCCOMB_X12_Y24_N22
\sine_gen_inst|Mux3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux3~2_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\)))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	combout => \sine_gen_inst|Mux3~2_combout\);

-- Location: LCCOMB_X12_Y24_N16
\sine_gen_inst|Mux3~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux3~5_combout\ = (\sine_gen_inst|Mux3~1_combout\ & (\sine_gen_inst|Mux3~2_combout\ $ (((\sine_gen_inst|Mux3~0_combout\) # (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\))))) # (!\sine_gen_inst|Mux3~1_combout\ & 
-- (\sine_gen_inst|Mux3~2_combout\ & ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\) # (!\sine_gen_inst|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux3~1_combout\,
	datab => \sine_gen_inst|Mux3~0_combout\,
	datac => \sine_gen_inst|Mux3~2_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux3~5_combout\);

-- Location: LCCOMB_X12_Y24_N14
\sine_gen_inst|Mux3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux3~4_combout\ = (\sine_gen_inst|Mux3~0_combout\ & (!\sine_gen_inst|Mux3~1_combout\ & (!\sine_gen_inst|Mux3~2_combout\))) # (!\sine_gen_inst|Mux3~0_combout\ & (\sine_gen_inst|Mux3~2_combout\ & (\sine_gen_inst|Mux3~1_combout\ $ 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux3~1_combout\,
	datab => \sine_gen_inst|Mux3~0_combout\,
	datac => \sine_gen_inst|Mux3~2_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux3~4_combout\);

-- Location: LCCOMB_X12_Y24_N24
\sine_gen_inst|Mux3~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux3~3_combout\ = (\sine_gen_inst|Mux3~1_combout\ & (\sine_gen_inst|Mux3~2_combout\ $ (((\sine_gen_inst|Mux3~0_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\))))) # (!\sine_gen_inst|Mux3~1_combout\ & 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & ((\sine_gen_inst|Mux3~0_combout\) # (!\sine_gen_inst|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux3~1_combout\,
	datab => \sine_gen_inst|Mux3~0_combout\,
	datac => \sine_gen_inst|Mux3~2_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux3~3_combout\);

-- Location: LCCOMB_X12_Y24_N0
\sine_gen_inst|Mux3~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux3~7_combout\ = (\sine_gen_inst|Mux3~4_combout\ & (\sine_gen_inst|Mux3~3_combout\ $ (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\) # (\sine_gen_inst|Mux3~5_combout\))))) # (!\sine_gen_inst|Mux3~4_combout\ & 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & ((\sine_gen_inst|Mux3~5_combout\) # (\sine_gen_inst|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datab => \sine_gen_inst|Mux3~5_combout\,
	datac => \sine_gen_inst|Mux3~4_combout\,
	datad => \sine_gen_inst|Mux3~3_combout\,
	combout => \sine_gen_inst|Mux3~7_combout\);

-- Location: LCCOMB_X12_Y24_N6
\sine_gen_inst|Mux3~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux3~8_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & (((!\sine_gen_inst|Mux3~7_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\)))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & (\sine_gen_inst|Mux3~6_combout\ $ (\sine_gen_inst|Mux3~7_combout\ $ (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux3~6_combout\,
	datab => \sine_gen_inst|Mux3~7_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	combout => \sine_gen_inst|Mux3~8_combout\);

-- Location: LCCOMB_X13_Y22_N4
\sine_gen_inst|Mux3~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux3~13_combout\ = (\sine_gen_inst|Mux3~8_combout\) # ((\sine_gen_inst|Mux10~0_combout\ & ((\sine_gen_inst|Mux3~9_combout\) # (\sine_gen_inst|Mux3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux3~9_combout\,
	datab => \sine_gen_inst|Mux3~12_combout\,
	datac => \sine_gen_inst|Mux3~8_combout\,
	datad => \sine_gen_inst|Mux10~0_combout\,
	combout => \sine_gen_inst|Mux3~13_combout\);

-- Location: LCCOMB_X11_Y20_N14
\sine_gen_inst|Mux7~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux7~2_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux7~2_combout\);

-- Location: LCCOMB_X11_Y20_N20
\sine_gen_inst|Mux7~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux7~3_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & ((\sine_gen_inst|Mux7~2_combout\))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & (!\sine_gen_inst|Mux7~1_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & 
-- (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux7~1_combout\,
	datab => \sine_gen_inst|Mux7~2_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	combout => \sine_gen_inst|Mux7~3_combout\);

-- Location: LCCOMB_X11_Y20_N2
\sine_gen_inst|Mux7~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux7~4_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\) # ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux7~4_combout\);

-- Location: LCCOMB_X11_Y20_N0
\sine_gen_inst|Mux7~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux7~5_combout\ = (\sine_gen_inst|Mux7~3_combout\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\) # (!\sine_gen_inst|Mux7~4_combout\)))) # (!\sine_gen_inst|Mux7~3_combout\ & (\sine_gen_inst|Mux7~0_combout\ & 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux7~0_combout\,
	datab => \sine_gen_inst|Mux7~3_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Mux7~4_combout\,
	combout => \sine_gen_inst|Mux7~5_combout\);

-- Location: LCCOMB_X11_Y20_N18
\sine_gen_inst|Mux7~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux7~6_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ $ (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux7~6_combout\);

-- Location: LCCOMB_X11_Y20_N4
\sine_gen_inst|Mux7~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux7~7_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & (((\sine_gen_inst|Mux7~6_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\)))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\)) # (!\sine_gen_inst|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux7~0_combout\,
	datab => \sine_gen_inst|Mux7~6_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	combout => \sine_gen_inst|Mux7~7_combout\);

-- Location: LCCOMB_X11_Y20_N12
\sine_gen_inst|Mux7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux7~1_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & 
-- (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux7~1_combout\);

-- Location: LCCOMB_X11_Y20_N10
\sine_gen_inst|Mux7~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux7~8_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & (((\sine_gen_inst|Mux7~7_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & ((\sine_gen_inst|Mux7~7_combout\ & 
-- (\sine_gen_inst|Mux7~4_combout\)) # (!\sine_gen_inst|Mux7~7_combout\ & ((\sine_gen_inst|Mux7~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datab => \sine_gen_inst|Mux7~4_combout\,
	datac => \sine_gen_inst|Mux7~7_combout\,
	datad => \sine_gen_inst|Mux7~1_combout\,
	combout => \sine_gen_inst|Mux7~8_combout\);

-- Location: LCCOMB_X11_Y20_N24
\sine_gen_inst|Mux7~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux7~9_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & (\sine_gen_inst|Mux7~5_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & ((\sine_gen_inst|Mux7~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	datab => \sine_gen_inst|Mux7~5_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datad => \sine_gen_inst|Mux7~8_combout\,
	combout => \sine_gen_inst|Mux7~9_combout\);

-- Location: LCCOMB_X15_Y19_N4
\sine_gen_inst|Mux7~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux7~16_combout\ = (\sine_gen_inst|Mux7~9_combout\) # ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & (\sine_gen_inst|Mux7~15_combout\ $ (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux7~15_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datad => \sine_gen_inst|Mux7~9_combout\,
	combout => \sine_gen_inst|Mux7~16_combout\);

-- Location: LCCOMB_X15_Y19_N8
\comp_a_inst|LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp_a_inst|LessThan0~1_cout\ = CARRY((!\triangle_gen_inst|current_value\(0) & \sine_gen_inst|Mux7~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangle_gen_inst|current_value\(0),
	datab => \sine_gen_inst|Mux7~16_combout\,
	datad => VCC,
	cout => \comp_a_inst|LessThan0~1_cout\);

-- Location: LCCOMB_X15_Y19_N10
\comp_a_inst|LessThan0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp_a_inst|LessThan0~3_cout\ = CARRY((\sine_gen_inst|Mux6~19_combout\ & (\triangle_gen_inst|current_value\(1) & !\comp_a_inst|LessThan0~1_cout\)) # (!\sine_gen_inst|Mux6~19_combout\ & ((\triangle_gen_inst|current_value\(1)) # 
-- (!\comp_a_inst|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux6~19_combout\,
	datab => \triangle_gen_inst|current_value\(1),
	datad => VCC,
	cin => \comp_a_inst|LessThan0~1_cout\,
	cout => \comp_a_inst|LessThan0~3_cout\);

-- Location: LCCOMB_X15_Y19_N12
\comp_a_inst|LessThan0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp_a_inst|LessThan0~5_cout\ = CARRY((\sine_gen_inst|Mux5~16_combout\ & ((!\comp_a_inst|LessThan0~3_cout\) # (!\triangle_gen_inst|current_value\(2)))) # (!\sine_gen_inst|Mux5~16_combout\ & (!\triangle_gen_inst|current_value\(2) & 
-- !\comp_a_inst|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux5~16_combout\,
	datab => \triangle_gen_inst|current_value\(2),
	datad => VCC,
	cin => \comp_a_inst|LessThan0~3_cout\,
	cout => \comp_a_inst|LessThan0~5_cout\);

-- Location: LCCOMB_X15_Y19_N14
\comp_a_inst|LessThan0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp_a_inst|LessThan0~7_cout\ = CARRY((\sine_gen_inst|Mux4~17_combout\ & (\triangle_gen_inst|current_value\(3) & !\comp_a_inst|LessThan0~5_cout\)) # (!\sine_gen_inst|Mux4~17_combout\ & ((\triangle_gen_inst|current_value\(3)) # 
-- (!\comp_a_inst|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux4~17_combout\,
	datab => \triangle_gen_inst|current_value\(3),
	datad => VCC,
	cin => \comp_a_inst|LessThan0~5_cout\,
	cout => \comp_a_inst|LessThan0~7_cout\);

-- Location: LCCOMB_X15_Y19_N16
\comp_a_inst|LessThan0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp_a_inst|LessThan0~9_cout\ = CARRY((\triangle_gen_inst|current_value\(4) & (\sine_gen_inst|Mux3~13_combout\ & !\comp_a_inst|LessThan0~7_cout\)) # (!\triangle_gen_inst|current_value\(4) & ((\sine_gen_inst|Mux3~13_combout\) # 
-- (!\comp_a_inst|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangle_gen_inst|current_value\(4),
	datab => \sine_gen_inst|Mux3~13_combout\,
	datad => VCC,
	cin => \comp_a_inst|LessThan0~7_cout\,
	cout => \comp_a_inst|LessThan0~9_cout\);

-- Location: LCCOMB_X15_Y19_N18
\comp_a_inst|LessThan0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp_a_inst|LessThan0~11_cout\ = CARRY((\triangle_gen_inst|current_value\(5) & ((!\comp_a_inst|LessThan0~9_cout\) # (!\sine_gen_inst|Mux2~11_combout\))) # (!\triangle_gen_inst|current_value\(5) & (!\sine_gen_inst|Mux2~11_combout\ & 
-- !\comp_a_inst|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangle_gen_inst|current_value\(5),
	datab => \sine_gen_inst|Mux2~11_combout\,
	datad => VCC,
	cin => \comp_a_inst|LessThan0~9_cout\,
	cout => \comp_a_inst|LessThan0~11_cout\);

-- Location: LCCOMB_X15_Y19_N20
\comp_a_inst|LessThan0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp_a_inst|LessThan0~13_cout\ = CARRY((\triangle_gen_inst|current_value\(6) & (\sine_gen_inst|Mux1~3_combout\ & !\comp_a_inst|LessThan0~11_cout\)) # (!\triangle_gen_inst|current_value\(6) & ((\sine_gen_inst|Mux1~3_combout\) # 
-- (!\comp_a_inst|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangle_gen_inst|current_value\(6),
	datab => \sine_gen_inst|Mux1~3_combout\,
	datad => VCC,
	cin => \comp_a_inst|LessThan0~11_cout\,
	cout => \comp_a_inst|LessThan0~13_cout\);

-- Location: LCCOMB_X15_Y19_N22
\comp_a_inst|LessThan0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp_a_inst|LessThan0~14_combout\ = (\triangle_gen_inst|current_value\(7) & (\comp_a_inst|LessThan0~13_cout\ & \sine_gen_inst|Mux0~3_combout\)) # (!\triangle_gen_inst|current_value\(7) & ((\comp_a_inst|LessThan0~13_cout\) # 
-- (\sine_gen_inst|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangle_gen_inst|current_value\(7),
	datad => \sine_gen_inst|Mux0~3_combout\,
	cin => \comp_a_inst|LessThan0~13_cout\,
	combout => \comp_a_inst|LessThan0~14_combout\);

-- Location: LCCOMB_X12_Y23_N24
\sine_gen_inst|Mux8~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux8~2_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux8~2_combout\);

-- Location: LCCOMB_X13_Y23_N24
\sine_gen_inst|Mux8~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux8~3_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & (((!\sine_gen_inst|Mux8~2_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\)))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & ((\sine_gen_inst|Mux8~1_combout\) # ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux8~1_combout\,
	datab => \sine_gen_inst|Mux8~2_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	combout => \sine_gen_inst|Mux8~3_combout\);

-- Location: LCCOMB_X15_Y23_N16
\sine_gen_inst|Mux9~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux9~4_combout\ = (\sine_gen_inst|Mux9~3_combout\) # ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & (\sine_gen_inst|Mux0~4_combout\ $ (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux9~3_combout\,
	datab => \sine_gen_inst|Mux0~4_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	combout => \sine_gen_inst|Mux9~4_combout\);

-- Location: LCCOMB_X15_Y24_N26
\sine_gen_inst|Mux10~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux10~2_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\)) 
-- # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	combout => \sine_gen_inst|Mux10~2_combout\);

-- Location: LCCOMB_X15_Y24_N24
\sine_gen_inst|Mux10~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux10~3_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ $ (((!\sine_gen_inst|Mux10~2_combout\) # (!\sine_gen_inst|Mux0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datab => \sine_gen_inst|Mux0~2_combout\,
	datac => \sine_gen_inst|Mux10~2_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	combout => \sine_gen_inst|Mux10~3_combout\);

-- Location: LCCOMB_X15_Y23_N26
\sine_gen_inst|Mux10~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux10~1_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	combout => \sine_gen_inst|Mux10~1_combout\);

-- Location: LCCOMB_X16_Y24_N14
\sine_gen_inst|Mux10~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux10~10_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\) # ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & 
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux10~10_combout\);

-- Location: LCCOMB_X15_Y24_N16
\sine_gen_inst|Mux2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux2~4_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\) # ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	combout => \sine_gen_inst|Mux2~4_combout\);

-- Location: LCCOMB_X16_Y24_N16
\sine_gen_inst|Mux10~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux10~9_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	combout => \sine_gen_inst|Mux10~9_combout\);

-- Location: LCCOMB_X16_Y24_N18
\sine_gen_inst|Mux10~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux10~12_combout\ = (\sine_gen_inst|Mux10~11_combout\ & ((\sine_gen_inst|Mux10~10_combout\ & (\sine_gen_inst|Mux2~4_combout\)) # (!\sine_gen_inst|Mux10~10_combout\ & ((\sine_gen_inst|Mux10~9_combout\))))) # 
-- (!\sine_gen_inst|Mux10~11_combout\ & (\sine_gen_inst|Mux10~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux10~11_combout\,
	datab => \sine_gen_inst|Mux10~10_combout\,
	datac => \sine_gen_inst|Mux2~4_combout\,
	datad => \sine_gen_inst|Mux10~9_combout\,
	combout => \sine_gen_inst|Mux10~12_combout\);

-- Location: LCCOMB_X15_Y24_N28
\sine_gen_inst|Mux10~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux10~13_combout\ = (\sine_gen_inst|Mux10~8_combout\) # ((\sine_gen_inst|Mux10~3_combout\) # ((\sine_gen_inst|Mux10~1_combout\ & \sine_gen_inst|Mux10~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux10~8_combout\,
	datab => \sine_gen_inst|Mux10~3_combout\,
	datac => \sine_gen_inst|Mux10~1_combout\,
	datad => \sine_gen_inst|Mux10~12_combout\,
	combout => \sine_gen_inst|Mux10~13_combout\);

-- Location: LCCOMB_X14_Y24_N24
\sine_gen_inst|Mux13~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux13~5_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ $ 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux13~5_combout\);

-- Location: LCCOMB_X14_Y24_N0
\sine_gen_inst|Mux13~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux13~1_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & 
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux13~1_combout\);

-- Location: LCCOMB_X14_Y24_N14
\sine_gen_inst|Mux13~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux13~6_combout\ = (\sine_gen_inst|Mux13~4_combout\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\)) # (!\sine_gen_inst|Mux13~5_combout\))) # (!\sine_gen_inst|Mux13~4_combout\ & 
-- (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & \sine_gen_inst|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux13~4_combout\,
	datab => \sine_gen_inst|Mux13~5_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datad => \sine_gen_inst|Mux13~1_combout\,
	combout => \sine_gen_inst|Mux13~6_combout\);

-- Location: LCCOMB_X16_Y24_N24
\sine_gen_inst|Mux13~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux13~7_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ $ ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\)))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & 
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux13~7_combout\);

-- Location: LCCOMB_X16_Y24_N22
\sine_gen_inst|Mux13~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux13~8_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\) # ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & 
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux13~8_combout\);

-- Location: LCCOMB_X16_Y24_N20
\sine_gen_inst|Mux13~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux13~16_combout\ = (\sine_gen_inst|Mux13~8_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & ((!\sine_gen_inst|Mux13~7_combout\))))) # (!\sine_gen_inst|Mux13~8_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ $ (\sine_gen_inst|Mux13~7_combout\ 
-- $ (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011000111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datab => \sine_gen_inst|Mux13~7_combout\,
	datac => \sine_gen_inst|Mux13~8_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	combout => \sine_gen_inst|Mux13~16_combout\);

-- Location: LCCOMB_X16_Y24_N26
\sine_gen_inst|Mux13~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux13~17_combout\ = (\sine_gen_inst|Mux13~16_combout\ & (((!\sine_gen_inst|Mux13~8_combout\ & !\sine_gen_inst|Mux13~7_combout\)) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\))) # 
-- (!\sine_gen_inst|Mux13~16_combout\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & \sine_gen_inst|Mux13~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux13~8_combout\,
	datab => \sine_gen_inst|Mux13~16_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datad => \sine_gen_inst|Mux13~7_combout\,
	combout => \sine_gen_inst|Mux13~17_combout\);

-- Location: LCCOMB_X15_Y23_N24
\sine_gen_inst|Mux13~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux13~9_combout\ = (\sine_gen_inst|Mux10~0_combout\ & ((\sine_gen_inst|Mux13~17_combout\) # ((\sine_gen_inst|Mux13~6_combout\ & \sine_gen_inst|Mux10~1_combout\)))) # (!\sine_gen_inst|Mux10~0_combout\ & (\sine_gen_inst|Mux13~6_combout\ & 
-- (\sine_gen_inst|Mux10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux10~0_combout\,
	datab => \sine_gen_inst|Mux13~6_combout\,
	datac => \sine_gen_inst|Mux10~1_combout\,
	datad => \sine_gen_inst|Mux13~17_combout\,
	combout => \sine_gen_inst|Mux13~9_combout\);

-- Location: LCCOMB_X17_Y20_N30
\sine_gen_inst|Mux13~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux13~11_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ $ (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & 
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\))))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\)) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & 
-- ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	combout => \sine_gen_inst|Mux13~11_combout\);

-- Location: LCCOMB_X17_Y20_N16
\sine_gen_inst|Mux13~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux13~12_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & (\sine_gen_inst|Mux13~11_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & ((\sine_gen_inst|Mux13~0_combout\))))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datac => \sine_gen_inst|Mux13~11_combout\,
	datad => \sine_gen_inst|Mux13~0_combout\,
	combout => \sine_gen_inst|Mux13~12_combout\);

-- Location: LCCOMB_X17_Y20_N26
\sine_gen_inst|Mux13~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux13~13_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\))) 
-- # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & 
-- (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	combout => \sine_gen_inst|Mux13~13_combout\);

-- Location: LCCOMB_X17_Y20_N12
\sine_gen_inst|Mux13~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux13~10_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ $ (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ $ 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & 
-- ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100111000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	combout => \sine_gen_inst|Mux13~10_combout\);

-- Location: LCCOMB_X17_Y20_N0
\sine_gen_inst|Mux13~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux13~14_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & (\sine_gen_inst|Mux13~12_combout\)) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & ((\sine_gen_inst|Mux13~12_combout\ & 
-- (\sine_gen_inst|Mux13~13_combout\)) # (!\sine_gen_inst|Mux13~12_combout\ & ((\sine_gen_inst|Mux13~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datab => \sine_gen_inst|Mux13~12_combout\,
	datac => \sine_gen_inst|Mux13~13_combout\,
	datad => \sine_gen_inst|Mux13~10_combout\,
	combout => \sine_gen_inst|Mux13~14_combout\);

-- Location: LCCOMB_X15_Y23_N18
\sine_gen_inst|Mux13~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux13~15_combout\ = (\sine_gen_inst|Mux13~9_combout\) # ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ $ (!\sine_gen_inst|Mux13~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	datab => \sine_gen_inst|Mux13~9_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datad => \sine_gen_inst|Mux13~14_combout\,
	combout => \sine_gen_inst|Mux13~15_combout\);

-- Location: LCCOMB_X14_Y24_N8
\sine_gen_inst|Mux14~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux14~4_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ $ (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ $ 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\) # 
-- ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux14~4_combout\);

-- Location: LCCOMB_X14_Y24_N28
\sine_gen_inst|Mux14~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux14~6_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ $ 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux14~6_combout\);

-- Location: LCCOMB_X14_Y24_N20
\sine_gen_inst|Mux14~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux14~8_combout\ = (\sine_gen_inst|Mux14~7_combout\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\)) # (!\sine_gen_inst|Mux14~4_combout\))) # (!\sine_gen_inst|Mux14~7_combout\ & 
-- (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & \sine_gen_inst|Mux14~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux14~7_combout\,
	datab => \sine_gen_inst|Mux14~4_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datad => \sine_gen_inst|Mux14~6_combout\,
	combout => \sine_gen_inst|Mux14~8_combout\);

-- Location: LCCOMB_X14_Y24_N30
\sine_gen_inst|Mux14~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux14~9_combout\ = (\sine_gen_inst|Mux14~5_combout\ & ((\sine_gen_inst|Mux10~1_combout\) # ((\sine_gen_inst|Mux10~0_combout\ & \sine_gen_inst|Mux14~8_combout\)))) # (!\sine_gen_inst|Mux14~5_combout\ & (\sine_gen_inst|Mux10~0_combout\ & 
-- ((\sine_gen_inst|Mux14~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux14~5_combout\,
	datab => \sine_gen_inst|Mux10~0_combout\,
	datac => \sine_gen_inst|Mux10~1_combout\,
	datad => \sine_gen_inst|Mux14~8_combout\,
	combout => \sine_gen_inst|Mux14~9_combout\);

-- Location: LCCOMB_X15_Y23_N20
\sine_gen_inst|Mux14~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux14~16_combout\ = (\sine_gen_inst|Mux14~9_combout\) # ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & (\sine_gen_inst|Mux14~15_combout\ $ (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux14~15_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datac => \sine_gen_inst|Mux14~9_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	combout => \sine_gen_inst|Mux14~16_combout\);

-- Location: LCCOMB_X15_Y23_N0
\comp_b_inst|LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp_b_inst|LessThan0~1_cout\ = CARRY((\sine_gen_inst|Mux15~16_combout\ & !\triangle_gen_inst|current_value\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux15~16_combout\,
	datab => \triangle_gen_inst|current_value\(0),
	datad => VCC,
	cout => \comp_b_inst|LessThan0~1_cout\);

-- Location: LCCOMB_X15_Y23_N2
\comp_b_inst|LessThan0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp_b_inst|LessThan0~3_cout\ = CARRY((\triangle_gen_inst|current_value\(1) & ((!\comp_b_inst|LessThan0~1_cout\) # (!\sine_gen_inst|Mux14~16_combout\))) # (!\triangle_gen_inst|current_value\(1) & (!\sine_gen_inst|Mux14~16_combout\ & 
-- !\comp_b_inst|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangle_gen_inst|current_value\(1),
	datab => \sine_gen_inst|Mux14~16_combout\,
	datad => VCC,
	cin => \comp_b_inst|LessThan0~1_cout\,
	cout => \comp_b_inst|LessThan0~3_cout\);

-- Location: LCCOMB_X15_Y23_N4
\comp_b_inst|LessThan0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp_b_inst|LessThan0~5_cout\ = CARRY((\triangle_gen_inst|current_value\(2) & (\sine_gen_inst|Mux13~15_combout\ & !\comp_b_inst|LessThan0~3_cout\)) # (!\triangle_gen_inst|current_value\(2) & ((\sine_gen_inst|Mux13~15_combout\) # 
-- (!\comp_b_inst|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangle_gen_inst|current_value\(2),
	datab => \sine_gen_inst|Mux13~15_combout\,
	datad => VCC,
	cin => \comp_b_inst|LessThan0~3_cout\,
	cout => \comp_b_inst|LessThan0~5_cout\);

-- Location: LCCOMB_X15_Y23_N6
\comp_b_inst|LessThan0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp_b_inst|LessThan0~7_cout\ = CARRY((\sine_gen_inst|Mux12~18_combout\ & (\triangle_gen_inst|current_value\(3) & !\comp_b_inst|LessThan0~5_cout\)) # (!\sine_gen_inst|Mux12~18_combout\ & ((\triangle_gen_inst|current_value\(3)) # 
-- (!\comp_b_inst|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux12~18_combout\,
	datab => \triangle_gen_inst|current_value\(3),
	datad => VCC,
	cin => \comp_b_inst|LessThan0~5_cout\,
	cout => \comp_b_inst|LessThan0~7_cout\);

-- Location: LCCOMB_X15_Y23_N8
\comp_b_inst|LessThan0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp_b_inst|LessThan0~9_cout\ = CARRY((\sine_gen_inst|Mux11~16_combout\ & ((!\comp_b_inst|LessThan0~7_cout\) # (!\triangle_gen_inst|current_value\(4)))) # (!\sine_gen_inst|Mux11~16_combout\ & (!\triangle_gen_inst|current_value\(4) & 
-- !\comp_b_inst|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux11~16_combout\,
	datab => \triangle_gen_inst|current_value\(4),
	datad => VCC,
	cin => \comp_b_inst|LessThan0~7_cout\,
	cout => \comp_b_inst|LessThan0~9_cout\);

-- Location: LCCOMB_X15_Y23_N10
\comp_b_inst|LessThan0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp_b_inst|LessThan0~11_cout\ = CARRY((\triangle_gen_inst|current_value\(5) & ((!\comp_b_inst|LessThan0~9_cout\) # (!\sine_gen_inst|Mux10~13_combout\))) # (!\triangle_gen_inst|current_value\(5) & (!\sine_gen_inst|Mux10~13_combout\ & 
-- !\comp_b_inst|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangle_gen_inst|current_value\(5),
	datab => \sine_gen_inst|Mux10~13_combout\,
	datad => VCC,
	cin => \comp_b_inst|LessThan0~9_cout\,
	cout => \comp_b_inst|LessThan0~11_cout\);

-- Location: LCCOMB_X15_Y23_N12
\comp_b_inst|LessThan0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp_b_inst|LessThan0~13_cout\ = CARRY((\triangle_gen_inst|current_value\(6) & (\sine_gen_inst|Mux9~4_combout\ & !\comp_b_inst|LessThan0~11_cout\)) # (!\triangle_gen_inst|current_value\(6) & ((\sine_gen_inst|Mux9~4_combout\) # 
-- (!\comp_b_inst|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangle_gen_inst|current_value\(6),
	datab => \sine_gen_inst|Mux9~4_combout\,
	datad => VCC,
	cin => \comp_b_inst|LessThan0~11_cout\,
	cout => \comp_b_inst|LessThan0~13_cout\);

-- Location: LCCOMB_X15_Y23_N14
\comp_b_inst|LessThan0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp_b_inst|LessThan0~14_combout\ = (\triangle_gen_inst|current_value\(7) & (\comp_b_inst|LessThan0~13_cout\ & \sine_gen_inst|Mux8~3_combout\)) # (!\triangle_gen_inst|current_value\(7) & ((\comp_b_inst|LessThan0~13_cout\) # 
-- (\sine_gen_inst|Mux8~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \triangle_gen_inst|current_value\(7),
	datad => \sine_gen_inst|Mux8~3_combout\,
	cin => \comp_b_inst|LessThan0~13_cout\,
	combout => \comp_b_inst|LessThan0~14_combout\);

-- Location: LCCOMB_X13_Y22_N18
\sine_gen_inst|Mux16~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux16~2_combout\ = ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	combout => \sine_gen_inst|Mux16~2_combout\);

-- Location: LCCOMB_X13_Y22_N12
\sine_gen_inst|Mux16~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux16~3_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\) # ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\) # 
-- (!\sine_gen_inst|Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	datab => \sine_gen_inst|Mux16~2_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux16~3_combout\);

-- Location: LCCOMB_X13_Y22_N2
\sine_gen_inst|Mux16~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux16~4_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & (\sine_gen_inst|Mux16~1_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & (((\sine_gen_inst|Mux16~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux16~1_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	datad => \sine_gen_inst|Mux16~3_combout\,
	combout => \sine_gen_inst|Mux16~4_combout\);

-- Location: FF_X21_Y22_N23
\triangle_gen_inst|current_value[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_div_inst|toggle_reg~clkctrl_outclk\,
	d => \triangle_gen_inst|current_value[6]~21_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \triangle_gen_inst|current_value\(6));

-- Location: LCCOMB_X16_Y23_N26
\sine_gen_inst|Mux19~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux19~3_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & 
-- !\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux19~3_combout\);

-- Location: LCCOMB_X16_Y23_N16
\sine_gen_inst|Mux19~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux19~0_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\) # 
-- ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	combout => \sine_gen_inst|Mux19~0_combout\);

-- Location: LCCOMB_X16_Y23_N28
\sine_gen_inst|Mux19~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux19~2_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & (!\sine_gen_inst|Mux19~1_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & ((\sine_gen_inst|Mux19~0_combout\))))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & 
-- (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux19~1_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datad => \sine_gen_inst|Mux19~0_combout\,
	combout => \sine_gen_inst|Mux19~2_combout\);

-- Location: LCCOMB_X16_Y23_N8
\sine_gen_inst|Mux19~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux19~4_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & (((\sine_gen_inst|Mux19~2_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & ((\sine_gen_inst|Mux19~2_combout\ & 
-- ((\sine_gen_inst|Mux19~3_combout\))) # (!\sine_gen_inst|Mux19~2_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datac => \sine_gen_inst|Mux19~3_combout\,
	datad => \sine_gen_inst|Mux19~2_combout\,
	combout => \sine_gen_inst|Mux19~4_combout\);

-- Location: LCCOMB_X16_Y23_N4
\sine_gen_inst|Mux19~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux19~8_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & ((\sine_gen_inst|Mux19~4_combout\))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & (\sine_gen_inst|Mux19~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux19~7_combout\,
	datab => \sine_gen_inst|Mux19~4_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	combout => \sine_gen_inst|Mux19~8_combout\);

-- Location: LCCOMB_X16_Y23_N30
\sine_gen_inst|Mux19~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux19~12_combout\ = (\sine_gen_inst|Mux19~8_combout\) # ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & (\sine_gen_inst|Mux19~11_combout\ $ (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux19~11_combout\,
	datab => \sine_gen_inst|Mux19~8_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	combout => \sine_gen_inst|Mux19~12_combout\);

-- Location: LCCOMB_X17_Y24_N12
\sine_gen_inst|Mux20~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux20~8_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ $ (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\))))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\) # 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	combout => \sine_gen_inst|Mux20~8_combout\);

-- Location: LCCOMB_X17_Y24_N20
\sine_gen_inst|Mux20~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux20~10_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & (\sine_gen_inst|Mux20~9_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & (((\sine_gen_inst|Mux20~8_combout\) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux20~9_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datad => \sine_gen_inst|Mux20~8_combout\,
	combout => \sine_gen_inst|Mux20~10_combout\);

-- Location: LCCOMB_X17_Y24_N14
\sine_gen_inst|Mux20~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux20~7_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ $ (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\))))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & 
-- ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	combout => \sine_gen_inst|Mux20~7_combout\);

-- Location: LCCOMB_X17_Y24_N10
\sine_gen_inst|Mux20~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux20~11_combout\ = \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ $ (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\) # 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	combout => \sine_gen_inst|Mux20~11_combout\);

-- Location: LCCOMB_X17_Y24_N0
\sine_gen_inst|Mux20~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux20~12_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & (\sine_gen_inst|Mux20~10_combout\)) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & ((\sine_gen_inst|Mux20~10_combout\ & 
-- ((\sine_gen_inst|Mux20~11_combout\))) # (!\sine_gen_inst|Mux20~10_combout\ & (\sine_gen_inst|Mux20~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datab => \sine_gen_inst|Mux20~10_combout\,
	datac => \sine_gen_inst|Mux20~7_combout\,
	datad => \sine_gen_inst|Mux20~11_combout\,
	combout => \sine_gen_inst|Mux20~12_combout\);

-- Location: LCCOMB_X16_Y24_N28
\sine_gen_inst|Mux20~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux20~13_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & (\sine_gen_inst|Mux20~6_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & ((\sine_gen_inst|Mux20~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux20~6_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	datac => \sine_gen_inst|Mux20~12_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	combout => \sine_gen_inst|Mux20~13_combout\);

-- Location: LCCOMB_X15_Y24_N18
\sine_gen_inst|Mux12~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux12~16_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	combout => \sine_gen_inst|Mux12~16_combout\);

-- Location: LCCOMB_X12_Y20_N18
\sine_gen_inst|Mux20~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux20~14_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ 
-- & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	combout => \sine_gen_inst|Mux20~14_combout\);

-- Location: LCCOMB_X12_Y20_N24
\sine_gen_inst|Mux20~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux20~15_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	combout => \sine_gen_inst|Mux20~15_combout\);

-- Location: LCCOMB_X12_Y20_N14
\sine_gen_inst|Mux20~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux20~16_combout\ = (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & (\sine_gen_inst|Mux20~14_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & ((!\sine_gen_inst|Mux20~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datab => \sine_gen_inst|Mux20~14_combout\,
	datac => \sine_gen_inst|Mux20~15_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	combout => \sine_gen_inst|Mux20~16_combout\);

-- Location: LCCOMB_X15_Y24_N0
\sine_gen_inst|Mux20~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux20~17_combout\ = (\sine_gen_inst|Mux20~16_combout\) # ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & (\sine_gen_inst|Mux12~16_combout\ & \sine_gen_inst|Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datab => \sine_gen_inst|Mux12~16_combout\,
	datac => \sine_gen_inst|Mux20~16_combout\,
	datad => \sine_gen_inst|Mux0~2_combout\,
	combout => \sine_gen_inst|Mux20~17_combout\);

-- Location: LCCOMB_X16_Y24_N30
\sine_gen_inst|Mux20~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux20~18_combout\ = (\sine_gen_inst|Mux20~13_combout\) # ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ $ (!\sine_gen_inst|Mux20~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datab => \sine_gen_inst|Mux20~13_combout\,
	datac => \sine_gen_inst|Mux20~17_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	combout => \sine_gen_inst|Mux20~18_combout\);

-- Location: LCCOMB_X13_Y23_N16
\sine_gen_inst|Mux23~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux23~6_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\)) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\ & ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\))))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ $ (((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	combout => \sine_gen_inst|Mux23~6_combout\);

-- Location: LCCOMB_X13_Y23_N26
\sine_gen_inst|Mux23~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux23~7_combout\ = \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ $ (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	combout => \sine_gen_inst|Mux23~7_combout\);

-- Location: LCCOMB_X13_Y23_N20
\sine_gen_inst|Mux23~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux23~13_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ $ (((\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & 
-- \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\))))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\) # 
-- ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & !\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	combout => \sine_gen_inst|Mux23~13_combout\);

-- Location: LCCOMB_X13_Y23_N22
\sine_gen_inst|Mux23~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux23~14_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & ((\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & ((!\sine_gen_inst|Mux23~13_combout\))) # 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\ & (\sine_gen_inst|Mux23~7_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & 
-- (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_10~28_combout\,
	datac => \sine_gen_inst|Mux23~7_combout\,
	datad => \sine_gen_inst|Mux23~13_combout\,
	combout => \sine_gen_inst|Mux23~14_combout\);

-- Location: LCCOMB_X17_Y23_N2
\sine_gen_inst|Mux23~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux23~10_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\ & (\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ $ 
-- (\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\ & 
-- ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_9~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datad => \sine_gen_inst|Div0|auto_generated|divider|divider|op_12~28_combout\,
	combout => \sine_gen_inst|Mux23~10_combout\);

-- Location: LCCOMB_X13_Y23_N28
\sine_gen_inst|Mux23~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux23~15_combout\ = (\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & (((\sine_gen_inst|Mux23~14_combout\)))) # (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\ & ((\sine_gen_inst|Mux23~14_combout\ 
-- & ((!\sine_gen_inst|Mux23~10_combout\))) # (!\sine_gen_inst|Mux23~14_combout\ & (!\sine_gen_inst|Mux23~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Div0|auto_generated|divider|divider|op_8~28_combout\,
	datab => \sine_gen_inst|Mux23~6_combout\,
	datac => \sine_gen_inst|Mux23~14_combout\,
	datad => \sine_gen_inst|Mux23~10_combout\,
	combout => \sine_gen_inst|Mux23~15_combout\);

-- Location: LCCOMB_X13_Y23_N30
\sine_gen_inst|Mux23~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sine_gen_inst|Mux23~16_combout\ = (\sine_gen_inst|Mux23~12_combout\) # ((!\sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\ & (!\sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\ & \sine_gen_inst|Mux23~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux23~12_combout\,
	datab => \sine_gen_inst|Div0|auto_generated|divider|divider|op_7~28_combout\,
	datac => \sine_gen_inst|Div0|auto_generated|divider|divider|op_6~30_combout\,
	datad => \sine_gen_inst|Mux23~15_combout\,
	combout => \sine_gen_inst|Mux23~16_combout\);

-- Location: LCCOMB_X17_Y23_N8
\comp_c_inst|LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp_c_inst|LessThan0~1_cout\ = CARRY((!\triangle_gen_inst|current_value\(0) & \sine_gen_inst|Mux23~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangle_gen_inst|current_value\(0),
	datab => \sine_gen_inst|Mux23~16_combout\,
	datad => VCC,
	cout => \comp_c_inst|LessThan0~1_cout\);

-- Location: LCCOMB_X17_Y23_N10
\comp_c_inst|LessThan0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp_c_inst|LessThan0~3_cout\ = CARRY((\sine_gen_inst|Mux22~16_combout\ & (\triangle_gen_inst|current_value\(1) & !\comp_c_inst|LessThan0~1_cout\)) # (!\sine_gen_inst|Mux22~16_combout\ & ((\triangle_gen_inst|current_value\(1)) # 
-- (!\comp_c_inst|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux22~16_combout\,
	datab => \triangle_gen_inst|current_value\(1),
	datad => VCC,
	cin => \comp_c_inst|LessThan0~1_cout\,
	cout => \comp_c_inst|LessThan0~3_cout\);

-- Location: LCCOMB_X17_Y23_N12
\comp_c_inst|LessThan0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp_c_inst|LessThan0~5_cout\ = CARRY((\sine_gen_inst|Mux21~17_combout\ & ((!\comp_c_inst|LessThan0~3_cout\) # (!\triangle_gen_inst|current_value\(2)))) # (!\sine_gen_inst|Mux21~17_combout\ & (!\triangle_gen_inst|current_value\(2) & 
-- !\comp_c_inst|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux21~17_combout\,
	datab => \triangle_gen_inst|current_value\(2),
	datad => VCC,
	cin => \comp_c_inst|LessThan0~3_cout\,
	cout => \comp_c_inst|LessThan0~5_cout\);

-- Location: LCCOMB_X17_Y23_N14
\comp_c_inst|LessThan0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp_c_inst|LessThan0~7_cout\ = CARRY((\triangle_gen_inst|current_value\(3) & ((!\comp_c_inst|LessThan0~5_cout\) # (!\sine_gen_inst|Mux20~18_combout\))) # (!\triangle_gen_inst|current_value\(3) & (!\sine_gen_inst|Mux20~18_combout\ & 
-- !\comp_c_inst|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangle_gen_inst|current_value\(3),
	datab => \sine_gen_inst|Mux20~18_combout\,
	datad => VCC,
	cin => \comp_c_inst|LessThan0~5_cout\,
	cout => \comp_c_inst|LessThan0~7_cout\);

-- Location: LCCOMB_X17_Y23_N16
\comp_c_inst|LessThan0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp_c_inst|LessThan0~9_cout\ = CARRY((\triangle_gen_inst|current_value\(4) & (\sine_gen_inst|Mux19~12_combout\ & !\comp_c_inst|LessThan0~7_cout\)) # (!\triangle_gen_inst|current_value\(4) & ((\sine_gen_inst|Mux19~12_combout\) # 
-- (!\comp_c_inst|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \triangle_gen_inst|current_value\(4),
	datab => \sine_gen_inst|Mux19~12_combout\,
	datad => VCC,
	cin => \comp_c_inst|LessThan0~7_cout\,
	cout => \comp_c_inst|LessThan0~9_cout\);

-- Location: LCCOMB_X17_Y23_N18
\comp_c_inst|LessThan0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp_c_inst|LessThan0~11_cout\ = CARRY((\sine_gen_inst|Mux18~8_combout\ & (\triangle_gen_inst|current_value\(5) & !\comp_c_inst|LessThan0~9_cout\)) # (!\sine_gen_inst|Mux18~8_combout\ & ((\triangle_gen_inst|current_value\(5)) # 
-- (!\comp_c_inst|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux18~8_combout\,
	datab => \triangle_gen_inst|current_value\(5),
	datad => VCC,
	cin => \comp_c_inst|LessThan0~9_cout\,
	cout => \comp_c_inst|LessThan0~11_cout\);

-- Location: LCCOMB_X17_Y23_N20
\comp_c_inst|LessThan0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp_c_inst|LessThan0~13_cout\ = CARRY((\sine_gen_inst|Mux17~4_combout\ & ((!\comp_c_inst|LessThan0~11_cout\) # (!\triangle_gen_inst|current_value\(6)))) # (!\sine_gen_inst|Mux17~4_combout\ & (!\triangle_gen_inst|current_value\(6) & 
-- !\comp_c_inst|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sine_gen_inst|Mux17~4_combout\,
	datab => \triangle_gen_inst|current_value\(6),
	datad => VCC,
	cin => \comp_c_inst|LessThan0~11_cout\,
	cout => \comp_c_inst|LessThan0~13_cout\);

-- Location: LCCOMB_X17_Y23_N22
\comp_c_inst|LessThan0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comp_c_inst|LessThan0~14_combout\ = (\triangle_gen_inst|current_value\(7) & (\comp_c_inst|LessThan0~13_cout\ & \sine_gen_inst|Mux16~4_combout\)) # (!\triangle_gen_inst|current_value\(7) & ((\comp_c_inst|LessThan0~13_cout\) # 
-- (\sine_gen_inst|Mux16~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \triangle_gen_inst|current_value\(7),
	datad => \sine_gen_inst|Mux16~4_combout\,
	cin => \comp_c_inst|LessThan0~13_cout\,
	combout => \comp_c_inst|LessThan0~14_combout\);

ww_sa1_pwm <= \sa1_pwm~output_o\;

ww_sa2_pwm <= \sa2_pwm~output_o\;

ww_sb1_pwm <= \sb1_pwm~output_o\;

ww_sb2_pwm <= \sb2_pwm~output_o\;

ww_sc1_pwm <= \sc1_pwm~output_o\;

ww_sc2_pwm <= \sc2_pwm~output_o\;
END structure;


