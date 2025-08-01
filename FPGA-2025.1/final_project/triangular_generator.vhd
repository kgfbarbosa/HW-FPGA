-- triangular_generator
-- author: Klysmann G.F. Barbosa
-- date: 6/11/2025
-- lab: GPAR

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity triangular_generator is
    port (
        clk             : in  std_logic;                    -- Sinal de clock
        reset_n         : in  std_logic;                    -- Sinal de reset assíncrono
        triangular_val0 : out std_logic_vector(7 downto 0); -- Saída da onda triangular0 de 8 bits
        triangular_val1 : out std_logic_vector(7 downto 0); -- Saída da onda triangular1 de 8 bits
        triangular_val2 : out std_logic_vector(7 downto 0); -- Saída da onda triangular2 de 8 bits
        triangular_val3 : out std_logic_vector(7 downto 0)  -- Saída da onda triangular3 de 8 bits
    );
end entity triangular_generator;
architecture behavioral of triangular_generator is
    signal s_triangular_counter : unsigned(7 downto 0) := (others => '0'); -- Contador de 8 bits
    signal direction            : std_logic            := '0';             -- '0' para incrementar,
begin																							   --	'1' para decrementar
    process (clk, reset_n)
    begin
        if reset_n = '0' then
            s_triangular_counter <= (others => '0');
            direction            <= '0';
        elsif rising_edge(clk) then
            if direction = '0' then -- Incrementando
                if s_triangular_counter = 63 then
                    direction <= '1'; -- Mudar para decrementar
                else
                    s_triangular_counter <= s_triangular_counter + 1;
                end if;
            else -- Decrementando
                if s_triangular_counter = 0 then
                    direction <= '0'; -- Mudar para incrementar
                else
                    s_triangular_counter <= s_triangular_counter - 1;
                end if;
            end if;
        end if;
    end process;
    triangular_val0 <= std_logic_vector(s_triangular_counter);
    -- Para as somas, garanta que o resultado caiba em 8 bits
    triangular_val1 <= std_logic_vector(s_triangular_counter + 64);
    triangular_val2 <= std_logic_vector(s_triangular_counter + 128);
    triangular_val3 <= std_logic_vector(s_triangular_counter + 192);
end architecture behavioral;