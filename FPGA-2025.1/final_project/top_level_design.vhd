-- top_level_design
-- author: Klysmann G.F. Barbosa
-- date: 6/16/2025
-- lab: GPAR
-- Description: Top-level VHDL file linking sine_clock_divider, triangular_clock_divider,
--              sine_generator, triangular_generator, and pwm_comparator modules.

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY top_level_design IS
    PORT (
        clk  : IN STD_LOGIC; -- Clock principal de entrada
        reset : IN STD_LOGIC; -- Reset ativo-alto (conforme os divisores de clock)
        -- Saídas do comparador PWM
        pwm_output0 : OUT STD_LOGIC;
        pwm_output1 : OUT STD_LOGIC;
        pwm_output2 : OUT STD_LOGIC;
        pwm_output3 : OUT STD_LOGIC
    );
END ENTITY top_level_design;

ARCHITECTURE Structural OF top_level_design IS

    -- Sinais internos para interconexão
    SIGNAL clk_sine_internal : STD_LOGIC;
    SIGNAL clk_tri_internal  : STD_LOGIC;

    SIGNAL sine_output_val : NATURAL RANGE 0 TO 255;

    SIGNAL triangular_val0_s : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL triangular_val1_s : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL triangular_val2_s : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL triangular_val3_s : STD_LOGIC_VECTOR(7 DOWNTO 0);

BEGIN

    -- Instanciação do divisor de clock para a senoide
    sine_clock_divid_inst : ENTITY work.sine_clock_divider
        GENERIC MAP (
            SINE_DIV_VALUE => 271 -- Usando o valor de 271 conforme a descrição do arquivo
        )
        PORT MAP (
            clk_main => clk,
            reset    => reset,
            clk_sine => clk_sine_internal
        );

    -- Instanciação do divisor de clock para a triangular
    triangular_clock_divid_inst : ENTITY work.triangular_clock_divider
        GENERIC MAP (
            TRIANGULAR_DIV_VALUE => 271 -- Usando o valor de 271 conforme a descrição do arquivo
        )
        PORT MAP (
            clk_main => clk,
            reset    => reset,
            clk_tri  => clk_tri_internal
        );

    -- Instanciação do gerador de senoide
    sine_general_inst : ENTITY work.sine_generator
        PORT MAP (
            clk     => clk_sine_internal,
            reset_n => NOT reset, -- O reset_n é ativo-baixo no sine_generator, então invertemos o reset de entrada
            sineA   => sine_output_val
        );

    -- Instanciação do gerador triangular
    triangular_general_inst : ENTITY work.triangular_generator
        PORT MAP (
            clk             => clk_tri_internal,
            reset_n         => NOT reset, -- O reset_n é ativo-baixo no triangular_generator, então invertemos o reset de entrada
            triangular_val0 => triangular_val0_s,
            triangular_val1 => triangular_val1_s,
            triangular_val2 => triangular_val2_s,
            triangular_val3 => triangular_val3_s
        );

    -- Instanciação do comparador PWM
    pwm_compara_inst : ENTITY work.pwm_comparator
        PORT MAP (
            clk             => clk, -- O comparador PWM usa o clock principal diretamente
            sine_input      => sine_output_val,
            triangular_input0 => triangular_val0_s,
            triangular_input1 => triangular_val1_s,
            triangular_input2 => triangular_val2_s,
            triangular_input3 => triangular_val3_s,
            pwm_output0     => pwm_output0,
            pwm_output1     => pwm_output1,
            pwm_output2     => pwm_output2,
            pwm_output3     => pwm_output3
        );

END ARCHITECTURE Structural;