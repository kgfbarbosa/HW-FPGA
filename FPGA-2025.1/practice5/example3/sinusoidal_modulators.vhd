-- Conteúdo de sinusoidal_modulators.vhd
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity sinusoidal_modulators is
    generic (
        MOD_FREQ_HZ     : natural := 60;    -- Default 60 Hz
        CLK_FREQ_HZ     : natural := 1_000_000; -- Default 1 MHz
        MAX_AMPLITUDE   : natural := 255;  -- Default 8-bit DAC resolution
        SAMPLES_PER_CYCLE : natural := 256 -- Default samples in ROM
    );
    port (
        clk       : in  std_logic;
        rst_n     : in  std_logic;
        sine_a_out : out std_logic_vector(7 downto 0);
        sine_b_out : out std_logic_vector(7 downto 0);
        sine_c_out : out std_logic_vector(7 downto 0)
    );
end entity sinusoidal_modulators;

architecture rtl of sinusoidal_modulators is
    constant COUNTER_MAX_VAL : natural := CLK_FREQ_HZ / MOD_FREQ_HZ;
    signal counter           : natural range 0 to COUNTER_MAX_VAL - 1 := 0;

    type sine_rom_type is array (0 to SAMPLES_PER_CYCLE - 1) of std_logic_vector(7 downto 0);
    function init_sine_rom return sine_rom_type is
        variable temp_rom : sine_rom_type;
        variable angle    : real;
        variable sine_val : real;
    begin
        for i in 0 to SAMPLES_PER_CYCLE - 1 loop
            angle := (real(i) / real(SAMPLES_PER_CYCLE)) * 2.0 * MATH_PI;
            sine_val := (sin(angle) + 1.0) / 2.0;
            temp_rom(i) := std_logic_vector(to_unsigned(natural(sine_val * real(MAX_AMPLITUDE)), 8));
        end loop;
        return temp_rom;
    end function init_sine_rom;

    constant SINE_ROM : sine_rom_type := init_sine_rom;

    constant PHASE_SHIFT_120_SAMPLES : natural := SAMPLES_PER_CYCLE / 3;
    constant PHASE_SHIFT_240_SAMPLES : natural := 2 * SAMPLES_PER_CYCLE / 3;

    signal address_a : natural range 0 to SAMPLES_PER_CYCLE - 1;
    signal address_b : natural range 0 to SAMPLES_PER_CYCLE - 1;
    signal address_c : natural range 0 to SAMPLES_PER_CYCLE - 1;

begin
    process (clk, rst_n) is
    begin
        if rst_n = '0' then
            counter <= 0;
        elsif rising_edge(clk) then
            if counter = COUNTER_MAX_VAL - 1 then
                counter <= 0;
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;

    address_a <= (counter * SAMPLES_PER_CYCLE) / COUNTER_MAX_VAL;
    address_b <= ((counter * SAMPLES_PER_CYCLE) / COUNTER_MAX_VAL + PHASE_SHIFT_120_SAMPLES) mod SAMPLES_PER_CYCLE;
    address_c <= ((counter * SAMPLES_PER_CYCLE) / COUNTER_MAX_VAL + PHASE_SHIFT_240_SAMPLES) mod SAMPLES_PER_CYCLE;

    sine_a_out <= SINE_ROM(address_a);
    sine_b_out <= SINE_ROM(address_b);
    sine_c_out <= SINE_ROM(address_c);

end architecture rtl;