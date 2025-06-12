--EXAMPLE 3
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity moore_detector_4bit is
    Port (
        clk   : in  STD_LOGIC;
        reset : in  STD_LOGIC;
        x     : in  STD_LOGIC_VECTOR(3 downto 0); -- entrada de 4 bits
        y     : out STD_LOGIC
    );
end moore_detector_4bit;

architecture Behavioral of moore_detector_4bit is
    type state_type is (S0, S1, R1, R2, R3);
    signal state, next_state : state_type;
begin

    -- Atualização do estado
    process(clk, reset)
    begin
        if reset = '1' then
            state <= S0;
        elsif rising_edge(clk) then
            state <= next_state;
        end if;
    end process;

    -- Lógica de transição de estados
    process(state, x)
    begin
        case state is
            when S0 =>
                if x = "1111" or x = "1100" then
                    next_state <= S1;
                elsif x = "1010" then -- 10
                    next_state <= R1;
                else
                    next_state <= S0;
                end if;

            when S1 =>
                if x = "1010" then -- 10
                    next_state <= R1;
                else
                    next_state <= S1; -- permanece ativo
                end if;

            when R1 =>
                if x = "0100" then -- 4
                    next_state <= R2;
                elsif x = "1111" or x = "1100" then
                    next_state <= S1;
                else
                    next_state <= S0;
                end if;

            when R2 =>
                if x = "0010" then -- 2
                    next_state <= R3;
                elsif x = "1111" or x = "1100" then
                    next_state <= S1;
                else
                    next_state <= S0;
                end if;

            when R3 =>
                next_state <= S0;

            when others =>
                next_state <= S0;
        end case;
    end process;

    -- Saída (Moore: depende apenas do estado)
    process(state)
    begin
        case state is
            when S1 => y <= '1';
            when others => y <= '0';
        end case;
    end process;

end Behavioral;
