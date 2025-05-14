-- Archive: full_adder.vhd
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder is
    Port (
        A     : in  STD_LOGIC;
        B     : in  STD_LOGIC;
        Cin   : in  STD_LOGIC;
        Sum   : out STD_LOGIC;
        Cout  : out STD_LOGIC
    );
end full_adder;

architecture Structural of full_adder is
    -- Internal signals to connect the half adders
    signal S1, C1, C2 : STD_LOGIC;

    -- Component declaration
    component half_adder
        Port (
            A     : in  STD_LOGIC;
            B     : in  STD_LOGIC;
            Sum   : out STD_LOGIC;
            Carry : out STD_LOGIC
        );
    end component;

begin
    -- First half adder: sum A and B
    HA1: half_adder port map (
        A => A,
        B => B,
        Sum => S1,
        Carry => C1
    );

    -- Second half adder: sum S1 and Cin
    HA2: half_adder port map (
        A => S1,
        B => Cin,
        Sum => Sum,
        Carry => C2
    );

    -- Final Carry out
    Cout <= C1 or C2;
end Structural;
