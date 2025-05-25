--Descreva em VHDL o hardware de um relógio digital com minutos e segundos mostrados no 
--display de sete segmentos. O circuito deve ter ainda botões de configuração como start/stop e 
--reset.

--entity digital_clock
entity example3 is
    Port (
        clk        : in  STD_LOGIC;
        btn_start  : in  STD_LOGIC;
        btn_reset  : in  STD_LOGIC;
        seg        : out STD_LOGIC_VECTOR (6 downto 0);
        an         : out STD_LOGIC_VECTOR (3 downto 0)
    );
end example3;

architecture Behavioral of example3 is
    signal clk_1hz    : STD_LOGIC;
    signal running    : STD_LOGIC := '0';
    signal minutes    : STD_LOGIC_VECTOR(6 downto 0);
    signal seconds    : STD_LOGIC_VECTOR(6 downto 0);
    signal min_tens   : STD_LOGIC_VECTOR(3 downto 0);
    signal min_units  : STD_LOGIC_VECTOR(3 downto 0);
    signal sec_tens   : STD_LOGIC_VECTOR(3 downto 0);
    signal sec_units  : STD_LOGIC_VECTOR(3 downto 0);
    signal current_digit : integer range 0 to 3 := 0;
begin
    -- Divisor de clock
    div: entity work.clock_divider
        port map(clk => clk, reset => btn_reset, clk_1hz => clk_1hz);

    -- Contador de tempo
    cnt: entity work.clock_counter
        port map(clk_1hz => clk_1hz, reset => btn_reset, enable => running,
                 minutes => minutes, seconds => seconds);

    -- Decodificações em BCD
    min_tens <= std_logic_vector(to_unsigned(to_integer(unsigned(minutes)) / 10, 4));
    min_units <= std_logic_vector(to_unsigned(to_integer(unsigned(minutes)) mod 10, 4));
    sec_tens <= std_logic_vector(to_unsigned(to_integer(unsigned(seconds)) / 10, 4));
    sec_units <= std_logic_vector(to_unsigned(to_integer(unsigned(seconds)) mod 10, 4));

    -- Controle de start/stop
    process(clk)
    begin
        if rising_edge(clk) then
            if btn_start = '1' then
                running <= not running;
            end if;
        end if;
    end process;

    -- Multiplexação dos displays (simplificada)
    process(clk)
    begin
        if rising_edge(clk) then
            current_digit <= (current_digit + 1)
::contentReference[oaicite:0]{index=0}
 
