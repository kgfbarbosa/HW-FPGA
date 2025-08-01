library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sawtooth_generator is
    port (
        clk        : in  std_logic; -- Clock do prescaler (~2.63 MHz)
        reset_n    : in  std_logic;
        sawtooth_val : out unsigned(7 downto 0) -- Saída do valor dente de serra (8 bits)
    );
end entity sawtooth_generator;

architecture behavioral of sawtooth_generator is
    signal s_sawtooth_counter : unsigned(7 downto 0) := (others => '0'); -- Contador de 8 bits (0 a 255)
begin

    process (clk, reset_n)
    begin
        if reset_n = '0' then
            s_sawtooth_counter <= (others => '0');
        elsif rising_edge(clk) then
            s_sawtooth_counter <= s_sawtooth_counter + 1; -- Conta de 0 a 255 automaticamente (overflow)
        end if;
    end process;

    sawtooth_val <= s_sawtooth_counter;

end architecture behavioral;