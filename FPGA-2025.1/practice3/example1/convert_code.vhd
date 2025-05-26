library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity convert_code is
    Port (
        scan_code : in  STD_LOGIC_VECTOR (7 downto 0);      -- Código PS/2 recebido
		--HEX3   	: out STD_LOGIC_VECTOR (6 downto 0);
      --HEX2   	: out STD_LOGIC_VECTOR (6 downto 0);
        HEX1      : out STD_LOGIC_VECTOR (6 downto 0);      -- Dígito mais significativo (4 bits altos)
        HEX0      : out STD_LOGIC_VECTOR (6 downto 0)       -- Dígito menos significativo (4 bits baixos)
    );
end convert_code;

architecture Behavioral of convert_code is

    -- Função para converter nibble (4 bits) para display de 7 segmentos (ativo baixo)
    function nibble_to_seven_seg(n : STD_LOGIC_VECTOR(3 downto 0)) return STD_LOGIC_VECTOR is
        variable seg : STD_LOGIC_VECTOR(6 downto 0);
    begin
        case n is
            when "0000" => seg := "1000000"; -- 0
            when "0001" => seg := "1111001"; -- 1
            when "0010" => seg := "0100100"; -- 2
            when "0011" => seg := "0110000"; -- 3
            when "0100" => seg := "0011001"; -- 4
            when "0101" => seg := "0010010"; -- 5
            when "0110" => seg := "0000010"; -- 6
            when "0111" => seg := "1111000"; -- 7
            when "1000" => seg := "0000000"; -- 8
            when "1001" => seg := "0010000"; -- 9
            when "1010" => seg := "0001000"; -- A
            when "1011" => seg := "0000011"; -- b
            when "1100" => seg := "1000110"; -- C
            when "1101" => seg := "0100001"; -- d
            when "1110" => seg := "0000110"; -- E
            when "1111" => seg := "0001110"; -- F
            when others => seg := "1111111"; -- Display apagado
        end case;
        return seg;
    end function;

begin

    -- Divisão do scan_code em dois nibbles (alto e baixo) e conversão para display
	 -- HEX3 <= nibble_to_seven_seg(valor(15 downto 12));
    -- HEX2 <= nibble_to_seven_seg(valor(11 downto 8));
    HEX1 <= nibble_to_seven_seg(scan_code(7 downto 4));
    HEX0 <= nibble_to_seven_seg(scan_code(3 downto 0));

end Behavioral;
