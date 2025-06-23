-- Conteúdo de comparison_block.vhd
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pwm_comparator is
    generic (
        DATA_WIDTH : natural := 8 -- Default 8-bit
    );
    port (
        carrier_in : in  std_logic_vector(DATA_WIDTH - 1 downto 0);
        modulator_in : in  std_logic_vector(DATA_WIDTH - 1 downto 0);
        pwm_out_pos : out std_logic;
        pwm_out_neg : out std_logic
    );
end entity pwm_comparator;

architecture rtl of pwm_comparator is
begin
    process (carrier_in, modulator_in) is
    begin
        if unsigned(modulator_in) > unsigned(carrier_in) then
            pwm_out_pos <= '1';
            pwm_out_neg <= '0';
        else
            pwm_out_pos <= '0';
            pwm_out_neg <= '1';
        end if;
    end process;
end architecture rtl;