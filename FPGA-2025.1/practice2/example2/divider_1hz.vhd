--Escreva dois códigos em VHDL, separados em 
--diferentes VHDL files com as seguintes designações: 
--1. O primeiro VHDL file deverá descrever um divisor de frequência em 1 Hz. 
--2. O segundo VHDL file receberá o sinal proveniente do divisor de frequência e 
--mostrará o valor da contagem nos displays de 7 segmentos do Kit. 
--O valor da contagem deverá ir até 20 e reiniciará. 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity divider_1hz is
    Port (
        clk_in    : in  STD_LOGIC;      -- Clock de entrada (ex: 50 MHz)
        reset     : in  STD_LOGIC;
        clk_1hz   : out STD_LOGIC       -- Clock de saída (1 Hz)
    );
end divider_1hz;

architecture Behavioral of divider_1hz is
    constant MAX_COUNT : integer := 50000000 - 1;
    signal count       : integer range 0 to MAX_COUNT := 0;
    signal clk_out     : STD_LOGIC := '0';
begin
    process(clk_in, reset)
    begin
        if reset = '1' then
            count   <= 0;
            clk_out <= '0';
        elsif rising_edge(clk_in) then
            if count = MAX_COUNT then
                count   <= 0;
                clk_out <= not clk_out;
            else
                count <= count + 1;
            end if;
        end if;
    end process;

    clk_1hz <= clk_out;
end Behavioral;
