-- Conteúdo de top_level_inverter_controller.vhd
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity top_module is
    port (
        clk_50mhz : in  std_logic;
        rst_n     : in  std_logic;
        -- PWM outputs for the inverter switches
        sa1_pwm   : out std_logic;
        sa2_pwm   : out std_logic;
        sb1_pwm   : out std_logic;
        sb2_pwm   : out std_logic;
        sc1_pwm   : out std_logic;
        sc2_pwm   : out std_logic
    );
end entity top_module;

architecture structural of top_module is

    -- Internal signals for module interconnection (8-bit width)
    signal clk_1mhz    : std_logic;
    signal triangle_val : std_logic_vector(7 downto 0);
    signal sine_a_val  : std_logic_vector(7 downto 0);
    signal sine_b_val  : std_logic_vector(7 downto 0);
    signal sine_c_val  : std_logic_vector(7 downto 0);

    -- Component declarations (these define the interfaces of the modules)
    component frequency_divider
        generic (
            CLOCK_IN_FREQ : natural := 50_000_000;
            CLOCK_OUT_FREQ : natural := 1_000_000
        );
        port (
            clk_in  : in  std_logic;
            rst_n   : in  std_logic;
            clk_out : out std_logic
        );
    end component;

    component triangular_carrier
        generic (
            CARRIER_FREQ_HZ : natural := 1_000;
            CLK_FREQ_HZ     : natural := 1_000_000;
            MAX_AMPLITUDE   : natural := 255
        );
        port (
            clk     : in  std_logic;
            rst_n   : in  std_logic;
            triangle_out : out std_logic_vector(7 downto 0)
        );
    end component;

    component sinusoidal_modulators
        generic (
            MOD_FREQ_HZ     : natural := 60;
            CLK_FREQ_HZ     : natural := 1_000_000;
            MAX_AMPLITUDE   : natural := 255;
            SAMPLES_PER_CYCLE : natural := 256
        );
        port (
            clk       : in  std_logic;
            rst_n     : in  std_logic;
            sine_a_out : out std_logic_vector(7 downto 0);
            sine_b_out : out std_logic_vector(7 downto 0);
            sine_c_out : out std_logic_vector(7 downto 0)
        );
    end component;

    component pwm_comparator
        generic (
            DATA_WIDTH : natural := 8
        );
        port (
            carrier_in   : in  std_logic_vector(DATA_WIDTH - 1 downto 0);
            modulator_in : in  std_logic_vector(DATA_WIDTH - 1 downto 0);
            pwm_out_pos  : out std_logic;
            pwm_out_neg  : out std_logic
        );
    end component;

begin

    -- Instance of the frequency divider module
    freq_div_inst : frequency_divider
        port map (
            clk_in  => clk_50mhz,
            rst_n   => rst_n,
            clk_out => clk_1mhz
        );

    -- Instance of the triangular carrier generator module
    triangle_gen_inst : triangular_carrier
        port map (
            clk     => clk_1mhz,
            rst_n   => rst_n,
            triangle_out => triangle_val
        );

    -- Instance of the sinusoidal modulators module
    sine_gen_inst : sinusoidal_modulators
        port map (
            clk       => clk_1mhz,
            rst_n     => rst_n,
            sine_a_out => sine_a_val,
            sine_b_out => sine_b_val,
            sine_c_out => sine_c_val
        );

    -- Instances of the three comparison blocks (one for each phase)
    comp_a_inst : pwm_comparator
        port map (
            carrier_in   => triangle_val,
            modulator_in => sine_a_val,
            pwm_out_pos  => sa1_pwm,
            pwm_out_neg  => sa2_pwm
        );

    comp_b_inst : pwm_comparator
        port map (
            carrier_in   => triangle_val,
            modulator_in => sine_b_val,
            pwm_out_pos  => sb1_pwm,
            pwm_out_neg  => sb2_pwm
        );

    comp_c_inst : pwm_comparator
        port map (
            carrier_in   => triangle_val,
            modulator_in => sine_c_val,
            pwm_out_pos  => sc1_pwm,
            pwm_out_neg  => sc2_pwm
        );

end architecture structural;