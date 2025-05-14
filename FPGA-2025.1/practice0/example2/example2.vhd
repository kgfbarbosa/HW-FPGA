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

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
-- CREATED		"Mon May 12 17:51:33 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY example2 IS 
	PORT
	(
		CLOCK :  IN  STD_LOGIC;
		RESET :  IN  STD_LOGIC;
		D :  IN  STD_LOGIC;
		SET :  IN  STD_LOGIC;
		Q0 :  OUT  STD_LOGIC;
		Q1 :  OUT  STD_LOGIC;
		Q2 :  OUT  STD_LOGIC;
		Q3 :  OUT  STD_LOGIC
	);
END example2;

ARCHITECTURE bdf_type OF example2 IS 

SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	DFF_inst3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	DFF_inst1 :  STD_LOGIC;
SIGNAL	DFF_inst2 :  STD_LOGIC;


BEGIN 
Q0 <= DFF_inst3;
Q1 <= DFF_inst1;
Q2 <= DFF_inst2;



SYNTHESIZED_WIRE_9 <= NOT(SET);



PROCESS(CLOCK,SYNTHESIZED_WIRE_8,SYNTHESIZED_WIRE_9)
BEGIN
IF (SYNTHESIZED_WIRE_8 = '0') THEN
	DFF_inst1 <= '0';
ELSIF (SYNTHESIZED_WIRE_9 = '0') THEN
	DFF_inst1 <= '1';
ELSIF (RISING_EDGE(CLOCK)) THEN
	DFF_inst1 <= DFF_inst3;
END IF;
END PROCESS;


PROCESS(CLOCK,SYNTHESIZED_WIRE_8,SYNTHESIZED_WIRE_9)
BEGIN
IF (SYNTHESIZED_WIRE_8 = '0') THEN
	DFF_inst2 <= '0';
ELSIF (SYNTHESIZED_WIRE_9 = '0') THEN
	DFF_inst2 <= '1';
ELSIF (RISING_EDGE(CLOCK)) THEN
	DFF_inst2 <= DFF_inst1;
END IF;
END PROCESS;


PROCESS(CLOCK,SYNTHESIZED_WIRE_8,SYNTHESIZED_WIRE_9)
BEGIN
IF (SYNTHESIZED_WIRE_8 = '0') THEN
	DFF_inst3 <= '0';
ELSIF (SYNTHESIZED_WIRE_9 = '0') THEN
	DFF_inst3 <= '1';
ELSIF (RISING_EDGE(CLOCK)) THEN
	DFF_inst3 <= D;
END IF;
END PROCESS;


PROCESS(CLOCK,SYNTHESIZED_WIRE_8,SYNTHESIZED_WIRE_9)
BEGIN
IF (SYNTHESIZED_WIRE_8 = '0') THEN
	Q3 <= '0';
ELSIF (SYNTHESIZED_WIRE_9 = '0') THEN
	Q3 <= '1';
ELSIF (RISING_EDGE(CLOCK)) THEN
	Q3 <= DFF_inst2;
END IF;
END PROCESS;


SYNTHESIZED_WIRE_8 <= NOT(RESET);



END bdf_type;