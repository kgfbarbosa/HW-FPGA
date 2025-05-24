library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity example2 is
    Port (
        clk50mhz  : in  STD_LOGIC;
        reset     : in  STD_LOGIC;
        disp1     : out STD_LOGIC_VECTOR (6 downto 0); -- Display unidades
        disp2     : out STD_LOGIC_VECTOR (6 downto 0)  -- Display dezenas
    );
end example2;

architecture Structural of example2 is
    signal clk_1hz_signal : STD_LOGIC;
begin

    -- Instância do divisor de frequência
    U1: entity work.divider_1hz
        port map (
            clk_in  => clk50mhz,
            reset   => reset,
            clk_1hz => clk_1hz_signal
        );

    -- Instância do contador com display
    U2: entity work.counter_display
        port map (
            clk_1hz  => clk_1hz_signal,
            reset    => reset,
            display1 => disp1,
            display2 => disp2
        );

end Structural;
