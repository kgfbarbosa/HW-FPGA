-- EXAMPLE 2
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity seq_detector_mealy is
    Port ( clk    : in  STD_LOGIC;
           reset  : in  STD_LOGIC;
           x      : in  STD_LOGIC;
           y      : out STD_LOGIC);
end seq_detector_mealy;

architecture Behavioral of seq_detector_mealy is
    type state_type is (S0, S1, S2, S3);
    signal state, next_state : state_type;
begin

    -- Processamento síncrono
    process(clk, reset)
    begin
        if reset = '1' then
            state <= S0;
        elsif rising_edge(clk) then
            state <= next_state;
        end if;
    end process;

    -- Transições e saída (Mealy: saída depende do estado e da entrada)
    process(state, x)
    begin
        y <= '0';  -- padrão
        case state is
            when S0 =>
                if x = '0' then
                    next_state <= S1;
                else
                    next_state <= S0;
                end if;
            when S1 =>
                if x = '1' then
                    next_state <= S2;
                else
                    next_state <= S1;
                end if;
            when S2 =>
                if x = '1' then
                    next_state <= S3;
                else
                    next_state <= S1;
                end if;
            when S3 =>
                if x = '0' then
                    y <= '1';             -- Detectou 0110!
                    next_state <= S1;     -- Volta para S1 (overlap)
                else
                    next_state <= S0;
                end if;
        end case;
    end process;

end Behavioral;
