library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity counter_display is
    Port (
        clk_1hz      : in  STD_LOGIC;
        reset        : in  STD_LOGIC;
        display1     : out STD_LOGIC_VECTOR (6 downto 0); -- dígito das unidades
        display2     : out STD_LOGIC_VECTOR (6 downto 0)  -- dígito das dezenas
    );
end counter_display;

architecture Behavioral of counter_display is
    signal count : integer range 0 to 19 := 0;

    function to_7segment(digit : integer) return STD_LOGIC_VECTOR is
        variable seg : STD_LOGIC_VECTOR(6 downto 0);
    begin
        case digit is
            when 0 => seg := "1000000";
            when 1 => seg := "1111001";
            when 2 => seg := "0100100";
            when 3 => seg := "0110000";
            when 4 => seg := "0011001";
            when 5 => seg := "0010010";
            when 6 => seg := "0000010";
            when 7 => seg := "1111000";
            when 8 => seg := "0000000";
            when 9 => seg := "0010000";
            when others => seg := "1111111"; -- display off
        end case;
        return seg;
    end function;
begin

    process(clk_1hz, reset)
    begin
        if reset = '1' then
            count <= 0;
        elsif rising_edge(clk_1hz) then
            if count = 19 then
                count <= 0;
            else
                count <= count + 1;
            end if;
        end if;
    end process;

    display1 <= to_7segment(count mod 10); -- unidades
    display2 <= to_7segment(count / 10);   -- dezenas

end Behavioral;
