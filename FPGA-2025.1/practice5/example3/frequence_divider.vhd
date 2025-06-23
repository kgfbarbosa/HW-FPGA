-- Conteúdo de frequency_divider.vhd
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity frequency_divider is
    generic (
        CLOCK_IN_FREQ : natural := 50_000_000; -- Default 50 MHz
        CLOCK_OUT_FREQ : natural := 1_000_000   -- Default 1 MHz
    );
    port (
        clk_in  : in  std_logic;
        rst_n   : in  std_logic;
        clk_out : out std_logic
    );
end entity frequency_divider;

architecture rtl of frequency_divider is
    constant DIV_FACTOR : natural := CLOCK_IN_FREQ / CLOCK_OUT_FREQ;
    signal counter      : natural range 0 to DIV_FACTOR - 1 := 0;
    signal toggle_reg   : std_logic := '0';
begin
    process (clk_in, rst_n) is
    begin
        if rst_n = '0' then
            counter    <= 0;
            toggle_reg <= '0';
        elsif rising_edge(clk_in) then
            if counter = DIV_FACTOR - 1 then
                counter    <= 0;
                toggle_reg <= not toggle_reg;
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;

    clk_out <= toggle_reg;
end architecture rtl;