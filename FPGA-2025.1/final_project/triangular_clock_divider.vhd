-- triangular_clock_divider
-- author: Klysmann G.F. Barbosa
-- date: 6/12/2025
-- lab: GPAR

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY triangular_clock_divider IS
    GENERIC (
        TRIANGULAR_DIV_VALUE : NATURAL := 271 -- deve ser 271. Valor para dividir o clock principal para a triangular
    );
    PORT (
        clk_main : IN  STD_LOGIC; -- Clock principal de entrada
        reset    : IN  STD_LOGIC; -- Reset ativo-alto
        clk_tri  : OUT STD_LOGIC  -- Clock de saída para o gerador triangular
    );
END ENTITY triangular_clock_divider;

ARCHITECTURE Behavioral OF triangular_clock_divider IS
    SIGNAL s_counter : NATURAL RANGE 0 TO TRIANGULAR_DIV_VALUE := 0;
    SIGNAL s_clk_out_internal : STD_LOGIC := '0';
BEGIN
    PROCESS (clk_main, reset)
    BEGIN
        IF reset = '0' THEN -- Reset ativo-alto
            s_counter <= 0;
            s_clk_out_internal <= '0';
        ELSIF RISING_EDGE(clk_main) THEN
            IF s_counter = TRIANGULAR_DIV_VALUE THEN
                s_counter <= 0;
                s_clk_out_internal <= NOT s_clk_out_internal; -- Alterna o clock de saída
            ELSE
                s_counter <= s_counter + 1;
            END IF;
        END IF;
    END PROCESS;

    clk_tri <= s_clk_out_internal;

END ARCHITECTURE Behavioral;