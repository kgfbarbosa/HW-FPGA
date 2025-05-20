--Escreva um código em VHDL de um divisor de frequência que obedeça às seguintes 
--especificações: 
--a. A entidade deverá ter somente uma entrada de 1 bit para o clock (50 MHz – 
--PIN_L1) e uma saída de 1 bit para um dos Leds do Kit. 
--b. O Led deverá piscar na frequência de 0,5 Hz, sendo 1s aceso e 1s apagado. 

--Especificações:
--Clock de entrada: 50 MHz
--Saída: 1 bit para LED (pisca com 0,5 Hz → período de 2s: 1s ON, 1s OFF)
--Cálculo:
--Para gerar um sinal de 0,5 Hz a partir de 50 MHz:
--50.000.000Hz/ 2 = 25.000.000 ciclos por meio-periodo



library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity frequencyDivider is
    Port (
        clk   : in  STD_LOGIC;       -- Clock de 50 MHz
        led   : out STD_LOGIC        -- Saída para LED
    );
end frequencyDivider;

architecture Behavioral of frequencyDivider is
    signal counter : INTEGER range 0 to 24_999_999 := 0;
    signal led_exit : STD_LOGIC := '0';
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if counter = 24_999_999 then
                counter <= 0;
                saida_led <= not led_exit;
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;

    led <= led_exit;
end Behavioral;
