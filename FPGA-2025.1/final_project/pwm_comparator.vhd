-- pwm_comparator
-- author: Klysmann G.F. Barbosa
-- date: 6/11/2025
-- lab: GPAR

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all; -- Para usar UNSIGNED e conversões

ENTITY pwm_comparator IS
    PORT (
        clk          : IN  STD_LOGIC;                            -- Clock principal
        sine_input   : IN  NATURAL RANGE 0 TO 255;               -- Entrada do gerador de seno
        triangular_input0 : IN  STD_LOGIC_VECTOR(7 DOWNTO 0);    -- Entrada do gerador triangular
        triangular_input1 : IN  STD_LOGIC_VECTOR(7 DOWNTO 0);    -- Entrada do gerador triangular
        triangular_input2 : IN  STD_LOGIC_VECTOR(7 DOWNTO 0);    -- Entrada do gerador triangular
        triangular_input3 : IN  STD_LOGIC_VECTOR(7 DOWNTO 0);    -- Entrada do gerador triangular
        pwm_output0   : OUT STD_LOGIC;                           -- Saída do sinal PWM
        pwm_output1   : OUT STD_LOGIC;                           -- Saída do sinal PWM
        pwm_output2   : OUT STD_LOGIC;                           -- Saída do sinal PWM
        pwm_output3   : OUT STD_LOGIC                            -- Saída do sinal PWM
    );
END pwm_comparator;

ARCHITECTURE behavioral OF pwm_comparator IS
BEGIN
    PROCESS (clk)
    BEGIN
        IF RISING_EDGE(clk) THEN
            -- Converte a entrada triangular para NATURAL para comparação
            -- Certifique-se de que ambas as entradas estejam no mesmo range de valores (0-255)
            IF sine_input > TO_INTEGER(UNSIGNED(triangular_input0)) THEN
                pwm_output0 <= '1';
            ELSE
                pwm_output0 <= '0';
            END IF;
        END IF;
        IF RISING_EDGE(clk) THEN
            -- Converte a entrada triangular para NATURAL para comparação
            -- Certifique-se de que ambas as entradas estejam no mesmo range de valores (0-255)
            IF sine_input > TO_INTEGER(UNSIGNED(triangular_input1)) THEN
                pwm_output1 <= '1';
            ELSE
                pwm_output1 <= '0';
            END IF;
        END IF;
        IF RISING_EDGE(clk) THEN
            -- Converte a entrada triangular para NATURAL para comparação
            -- Certifique-se de que ambas as entradas estejam no mesmo range de valores (0-255)
            IF sine_input > TO_INTEGER(UNSIGNED(triangular_input2)) THEN
                pwm_output2 <= '1';
            ELSE
                pwm_output2 <= '0';
            END IF;
        END IF;
        IF RISING_EDGE(clk) THEN
            -- Converte a entrada triangular para NATURAL para comparação
            -- Certifique-se de que ambas as entradas estejam no mesmo range de valores (0-255)
            IF sine_input > TO_INTEGER(UNSIGNED(triangular_input3)) THEN
                pwm_output3 <= '1';
            ELSE
                pwm_output3 <= '0';
            END IF;
        END IF;
		  		  
    END PROCESS;
END behavioral;