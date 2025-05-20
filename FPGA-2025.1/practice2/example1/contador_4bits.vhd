--2) Desenvolva um código em VHDL de um contador de 4 bits a uma frequência de 2 Hz. O valor 
--da contagem em binário deverá aparecer em um conjunto de 4 Leds do Kit. Toda vez que o 
--contador atingir o maior valor da contagem, um quinto Led deverá acender e logo a seguir a 
--contagem reiniciará.

--Especificações:
--Clock de entrada: 50 MHz
--Contador de 4 bits: conta de 0 a 15 com atualização a cada 0,5s (2 Hz)
--4 LEDs mostram o valor binário
--Um quinto LED acende ao atingir o valor máximo (15)
--Cálculo:
--Para 2 Hz: 50.000.000/2 = 25.000.000 ciclos entre atualizacoes

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity contador_4bits is
    Port (
        clk       : in  STD_LOGIC;               -- Clock de 50 MHz
        leds      : out STD_LOGIC_VECTOR(3 downto 0); -- LEDs de saída (binário)
        led_max   : out STD_LOGIC                -- LED que acende no valor máximo
    );
end contador_4bits;

architecture Behavioral of contador_4bits is
    signal contador_tempo : INTEGER range 0 to 24_999_999 := 0;
    signal contador : STD_LOGIC_VECTOR(3 downto 0) := "0000";
    signal max_flag : STD_LOGIC := '0';
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if contador_tempo = 24_999_999 then
                contador_tempo <= 0;
                if contador = "1111" then
                    contador <= "0000";
                    max_flag <= '1';
                else
                    contador <= contador + 1;
                    max_flag <= '0';
                end if;
            else
                contador_tempo <= contador_tempo + 1;
                max_flag <= '0';
            end if;
        end if;
    end process;

    leds <= contador;
    led_max <= max_flag;
end Behavioral;
