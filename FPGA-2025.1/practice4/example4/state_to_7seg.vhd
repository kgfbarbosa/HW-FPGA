--STATE_TO_7SEG
library ieee;
use ieee.std_logic_1164.all;
use work.state_pkg.all; -- Adicione esta linha para usar o pacote

entity state_to_7seg is
  port (
    current_fsm_state : in  state_type;                     -- Entrada: estado atual da FSM
    seg_out           : out std_logic_vector(6 downto 0)  -- Saída para os 7 segmentos (gfedcba)
  );
end entity state_to_7seg;

architecture behavioral of state_to_7seg is
begin
  process(current_fsm_state)
  begin
    case current_fsm_state is
      when A => seg_out <= "1110111"; -- Mostra 'A'
      when B => seg_out <= "0011111"; -- Mostra 'b'
      when C => seg_out <= "1001110"; -- Mostra 'C'
      when D => seg_out <= "0111101"; -- Mostra 'd'
      when E => seg_out <= "1001111"; -- Mostra 'E'
      when F => seg_out <= "1000111"; -- Mostra 'F'
      when G => seg_out <= "1011110"; -- Mostra 'G' (alternativa: "1111011" para um 'g' mais parecido com 9)
      when H => seg_out <= "0110111"; -- Mostra 'H'
      when I => seg_out <= "0000110"; -- Mostra 'I' (ou '1')
      when J => seg_out <= "0111100"; -- Mostra 'J'
      when L => seg_out <= "0001110"; -- Mostra 'L'
      when M => seg_out <= "1100111"; -- Mostra 'P' (pois 'M' é difícil em 7 seg. Alternativa para M: "1010100" - a,c,e,g)
      when N => seg_out <= "0010101"; -- Mostra 'n'
      when others => seg_out <= "0000000"; -- Desligado ou um padrão de erro (ex: "1000000" - só o segmento g)
    end case;
  end process;
end architecture behavioral;