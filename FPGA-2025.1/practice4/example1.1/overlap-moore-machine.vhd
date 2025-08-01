-- EXAMPLE 1 - OVERLAP - TO EDIT
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity seq_detector_overlap is
    Port ( clk    : in  STD_LOGIC;
           reset  : in  STD_LOGIC;
           x      : in  STD_LOGIC;
           y      : out STD_LOGIC);
end seq_detector_overlap;

architecture Behavioral of seq_detector_overlap is
    type state_type is (S0, S1, S2, S3, S4, S5);
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

    -- Lógica de transição de estados
    process(state, x)
    begin
        case state is
            when S0 =>
                if x = '1' then next_state <= S1;
                else next_state <= S0;
                end if;
            when S1 =>
                if x = '1' then next_state <= S2;
                else next_state <= S0;
                end if;
            when S2 =>
                if x = '0' then next_state <= S3;
                else next_state <= S2;
                end if;
            when S3 =>
                if x = '1' then next_state <= S4;
                else next_state <= S0;
                end if;
            when S4 =>
                if x = '1' then next_state <= S5;
                else next_state <= S0;
                end if;
            when S5 =>
                if x = '1' then next_state <= S2;
                else next_state <= S0;
                end if;
        end case;
    end process;

    -- Saída Moore (só depende do estado)
    process(state)
    begin
        case state is
            when S5 => y <= '1';
            when others => y <= '0';
        end case;
    end process;
end Behavioral;
