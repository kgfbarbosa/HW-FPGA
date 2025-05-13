LIBRARY ieee;
USE ieee.std_logic_1164.all;
-- practice 0 - circuit 1 vhdl file
-- it refers to items 1 and 2
-- code describes a association of LEDS and Keys

ENTITY example1 IS
PORT (A,B : IN STD_LOGIC;
X : OUT STD_LOGIC);
-- X is the output of A and B
END example1;

ARCHITECTURE teste OF example1 IS
	BEGIN
	X <= ((NOT A)OR B)XOR(A AND B);
END teste;