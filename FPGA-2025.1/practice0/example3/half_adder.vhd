-- Archive: half_adder.vhd
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_adder is
    Port (
        A     : in  STD_LOGIC;
        B     : in  STD_LOGIC;
        Sum   : out STD_LOGIC;
        Carry : out STD_LOGIC
    );
end half_adder;

architecture Behavioral of half_adder is
begin
    Sum   <= A xor B;
    Carry <= A and B;
end Behavioral;
