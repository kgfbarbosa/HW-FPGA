library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity example1 is
    Port (
        CLOCK_50  : in  STD_LOGIC;                      -- Clock da DE1
        PS2_CLK   : in  STD_LOGIC;                      -- Clock PS/2
        PS2_DAT   : in  STD_LOGIC;                      -- Dados PS/2
        KEY       : in  STD_LOGIC_VECTOR(0 downto 0);   -- Reset (KEY[0])
        HEX0      : out STD_LOGIC_VECTOR(6 downto 0);   -- Display LSB
        HEX1      : out STD_LOGIC_VECTOR(6 downto 0);   -- Display MSB
		  HEX2      : out STD_LOGIC_VECTOR(6 downto 0);   -- Display LSB
        HEX3      : out STD_LOGIC_VECTOR(6 downto 0)    -- Display MSB
    );
end example1;

architecture Structural of example1 is
    signal scancode : STD_LOGIC_VECTOR(7 downto 0);
begin

    -- Instância do módulo teclado
    U1: entity work.teclado
        port map (
            rst        => KEY(0),
            clock_tec  => PS2_CLK,
            dados_tec  => PS2_DAT,
            scan_code  => scancode
        );

    -- Instância do módulo conversor
    U2: entity work.convert_code
        port map (
            scan_code => scancode,
            HEX3      => HEX3,
            HEX2      => HEX2,
				HEX1      => HEX1,
            HEX0      => HEX0
        );

end Structural;
