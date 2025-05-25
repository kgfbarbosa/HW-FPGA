library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity clock_divider is
    Port (
        clk        : in  STD_LOGIC;
        reset      : in  STD_LOGIC;
        clk_1hz    : out STD_LOGIC
    );
end clock_divider;

architecture Behavioral of clock_divider is
    constant MAX_COUNT : integer := 50000000 - 1;
    signal counter     : integer := 0;
    signal clk_out     : STD_LOGIC := '0';
begin
    process(clk, reset)
    begin
        if reset = '1' then
            counter <= 0;
            clk_out <= '0';
        elsif rising_edge(clk) then
            if counter = MAX_COUNT then
                counter <= 0;
                clk_out <= not clk_out;
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;
    clk_1hz <= clk_out;
end Behavioral;
