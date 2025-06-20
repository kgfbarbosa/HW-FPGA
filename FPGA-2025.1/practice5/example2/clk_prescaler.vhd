library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity clk_prescaler is
    generic (
        G_PRESCALER_VALUE : positive := 20
    );
    port (
        clk_in  : in  std_logic;
        reset_n : in  std_logic;
        clk_out : out std_logic
    );
end entity clk_prescaler;

architecture behavioral of clk_prescaler is
	 signal s_counter   : integer range 0 to G_PRESCALER_VALUE-1 := 0;
    signal s_clk_out : std_logic := '0';
begin
    process(clk_in, reset_n)
    begin
        if reset_n = '0' then
            s_counter <= 0;
            s_clk_out  <= '0';
        elsif rising_edge(clk_in) then
            if s_counter = G_PRESCALER_VALUE - 1 then
                s_counter <= 0;
                s_clk_out  <= not s_clk_out; -- Gera o pulso por um ciclo
            else
                s_counter <= s_counter + 1;
            end if;
        end if;
    end process;
	 clk_out <= s_clk_out;
end architecture behavioral;