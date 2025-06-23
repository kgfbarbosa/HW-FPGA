-- Conteúdo de triangular_carrier.vhd
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity triangular_carrier is
    generic (
        CARRIER_FREQ_HZ : natural := 1_000;  -- Default 1 kHz
        CLK_FREQ_HZ     : natural := 1_000_000; -- Default 1 MHz
        MAX_AMPLITUDE   : natural := 255    -- Default 8-bit DAC resolution
    );
    port (
        clk     : in  std_logic;
        rst_n   : in  std_logic;
        triangle_out : out std_logic_vector(7 downto 0) -- 8-bit output
    );
end entity triangular_carrier;

architecture rtl of triangular_carrier is
    signal current_value        : natural range 0 to MAX_AMPLITUDE := 0;
    signal direction            : std_logic := '0'; -- '0' for increasing, '1' for decreasing
begin
    process (clk, rst_n) is
    begin
        if rst_n = '0' then
            current_value <= 0;
            direction     <= '0';
        elsif rising_edge(clk) then
            if direction = '0' then -- Increasing
                if current_value < MAX_AMPLITUDE then
                    current_value <= current_value + 1;
                else
                    direction     <= '1'; -- Change direction to decreasing
                    current_value <= current_value - 1;
                end if;
            else -- Decreasing
                if current_value > 0 then
                    current_value <= current_value - 1;
                else
                    direction     <= '0'; -- Change direction to increasing
                    current_value <= current_value + 1;
                end if;
            end if;
        end if;
    end process;

    triangle_out <= std_logic_vector(to_unsigned(current_value, 8));
end architecture rtl;