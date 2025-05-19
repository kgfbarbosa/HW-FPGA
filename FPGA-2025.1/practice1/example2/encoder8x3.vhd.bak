LIBRARY ieee;
USE ieee.std_logic_1164.all;
-- practice 1 - circuit 1 vhdl file
-- it refers to item 2

ENTITY example1 IS
PORT (A,X,B,Y : IN STD_LOGIC;
LED1,LED2,LED3,LED4 : OUT STD_LOGIC);
-- LEDS are the outputs of A to Y
END example1;

ARCHITECTURE behavioral OF example1 IS
	BEGIN
	LED1 <= (A AND X) AND (B AND Y);
	LED2 <= (A AND X) AND (NOT (B AND Y));
	LED3 <= (X AND B) XOR (A AND Y);
	LED4 <= (B AND Y);
END behavioral;