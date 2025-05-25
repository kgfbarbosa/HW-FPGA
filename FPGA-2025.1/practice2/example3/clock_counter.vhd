entity clock_counter is
    Port (
        clk_1hz    : in  STD_LOGIC;
        reset      : in  STD_LOGIC;
        enable     : in  STD_LOGIC;
        minutes    : out STD_LOGIC_VECTOR (6 downto 0); -- 2 BCD dígitos
        seconds    : out STD_LOGIC_VECTOR (6 downto 0)
    );
end clock_counter;

architecture Behavioral of clock_counter is
    signal sec : integer range 0 to 59 := 0;
    signal min : integer range 0 to 59 := 0;
begin
    process(clk_1hz, reset)
    begin
        if reset = '1' then
            sec <= 0;
            min <= 0;
        elsif rising_edge(clk_1hz) then
            if enable = '1' then
                if sec = 59 then
                    sec <= 0;
                    if min = 59 then
                        min <= 0;
                    else
                        min <= min + 1;
                    end if;
                else
                    sec <= sec + 1;
                end if;
            end if;
        end if;
    end process;

    minutes <= std_logic_vector(to_unsigned(min, 7));
    seconds <= std_logic_vector(to_unsigned(sec, 7));
end Behavioral;
