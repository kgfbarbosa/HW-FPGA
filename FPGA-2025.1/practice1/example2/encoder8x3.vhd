LIBRARY ieee;
USE ieee.std_logic_1164.all;
-- practice 1 - circuit 2 vhdl file
-- it refers to item 3

ENTITY encoder8x3 IS
PORT (D0,D1,D2,D3,D4,D5,D6,D7 : IN STD_LOGIC;
Q0,Q1,Q2 : OUT STD_LOGIC);
END encoder8x3;

ARCHITECTURE behavioral OF encoder8x3 IS
	BEGIN
	Q0 <= D1 OR D3 OR D5 OR D7;
	Q1 <= D2 OR D3 OR D6 OR D7;
	Q2 <= D4 OR D5 OR D6 OR D7;
END behavioral;